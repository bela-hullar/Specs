Pod::Spec.new do |s|
  s.name         = 'NSIncrementalStore_SQLCipher'
  s.version      = '0.1.0'
  s.summary      = 'NSIncrementalStore with SQLCipher and OpenSSL implementation.'

  s.description  = <<-DESC
                   Core Data encryption for NSPersistentStore with NSSQLiteStoreType type.
									 
									 It includes:
                   * NSIncrementalStore implementation by MITRE Corporation.
									 * SQLCipher for SQLite encryption/decryption.
									 * OpenSSL needed by SQLCipher.
                   DESC

  s.homepage     = "https://github.com/centralway/NSIncrementalStore_SQLCipher"
	
  s.license      = 'MIT'
  s.author       = { 'Luis Laugga' => 'luis.laugga@centralway.com' }
  s.source       = { :git => 'git@github.com:centralway/NSIncrementalStore_SQLCipher.git', :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '5.1'
  s.requires_arc = false

  s.source_files = ['lib/*', 'deps/sqlcipher/sqlite3.*']

  s.public_header_files = ['lib/*.h']
  s.prefix_header_file = 'support/NSIncrementalStore_SQLCipher-Prefix.pch'
  
	s.frameworks = 'CoreData', 'Security'
	s.dependency 'OpenSSL', '~> 1.0.0'
	
	s.xcconfig  =  { 'OTHER_CFLAGS' => '-DSQLITE_HAS_CODEC -DNDEBUG -DSQLITE_OS_UNIX=1 -DSQLITE_TEMP_STORE=2 -DSQLITE_THREADSAFE -DSQLCIPHER_CRYPTO_CC' }
			
end
