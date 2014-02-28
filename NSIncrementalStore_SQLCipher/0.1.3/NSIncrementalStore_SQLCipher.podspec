Pod::Spec.new do |s|
  s.name         = 'NSIncrementalStore_SQLCipher'
  s.version      = '0.1.3'
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
  s.requires_arc = true

  s.source_files = ['lib/*']

  s.public_header_files = ['lib/*.h']
  s.prefix_header_file = 'support/NSIncrementalStore_SQLCipher-Prefix.pch'
  
	s.frameworks = 'CoreData', 'Security'
	s.dependency 'SQLCipher', '~> 3.0.0'
	s.dependency 'OpenSSL', '~> 1.0.0'
			
end
