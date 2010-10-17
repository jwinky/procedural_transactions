require 'active_record'

module ActiveRecord::ProceduralTransactions

  def self.included(base)
    if Rails.version.starts_with?("2.")
      base.extend Rails2
    else
      raise "ActiveRecord::ProceduralTransactions only supports Rails v2"
    end
  end

  module Rails2

    # Opens a new transaction on the current database connection.
    #
    # If a transaction is currently open, ActiveRecord will create a new, nested transaction as
    # long as the underlying database supports nested transactions or savepoints.
    #
    # Note that SQLite before version 3 does NOT support this.
    def start_transaction
      if connected?
        connection.increment_open_transactions
        connection.transaction_joinable = false
        connection.begin_db_transaction
      end
    end

    # Roll back the currently-open transaction.
    #
    # NOTE: This method does NOT check that the currently open transaction is the same as the
    # one opened by #start_transaction.
    def rollback_transaction
      return unless connected?
      if connection.open_transactions != 0
        connection.rollback_db_transaction
        connection.decrement_open_transactions
      end
      clear_active_connections!
    end
  end

end

ActiveRecord::Base.send(:include, ActiveRecord::ProceduralTransactions)