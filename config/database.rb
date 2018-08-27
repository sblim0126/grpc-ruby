class Database
  def self.config
    {
      adapter: 'mysql2',
      host: 'localhost',
      username: 'root',
      password: 'asdf',
      database: 'grpc',
      pool: 5,
      timeout: 5000,
      reconnect: true
    }
  end
end