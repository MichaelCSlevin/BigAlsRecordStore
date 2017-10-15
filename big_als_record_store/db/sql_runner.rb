require( 'pg' )

class SqlRunner

  def self.run( sql, tag, values )
    begin
      db = PG.connect({ dbname: 'bigals', host: 'localhost' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close
    end
    return result
  end

end
