Pod::Spec.new do |s|
  s.name         = 'EncryptedPersistentStore'
  s.version      = '0.2.1'
  s.summary      = 'Encrypted Core Data NSPersistentStore using SQLCipher and OpenSSL for iOS.'

  s.description  = <<-DESC
                   Core Data encryption for NSPersistentStore with NSSQLiteStoreType type.
									 
									 It includes:
                   * NSIncrementalStore implementation by MITRE Corporation.
									 * SQLCipher for SQLite encryption/decryption.
									 * OpenSSL needed by SQLCipher.
                   DESC

  s.homepage     = "https://github.com/centralway/EncryptedPersistentStore"
	
  s.license      = 'MIT'
  s.author       = { 'Luis Laugga' => 'luis.laugga@centralway.com' }
  s.source       = { :git => 'git@github.com:centralway/EncryptedPersistentStore.git', :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '5.1'
  s.requires_arc = true

  s.source_files = ['lib/*']

  s.public_header_files = ['lib/*.h']
  s.prefix_header_file = 'support/EncryptedPersistentStore-Prefix.pch'
  
	s.frameworks = 'CoreData', 'Security'
	s.dependency 'SQLCipher', '~> 3.0.0'
	s.dependency 'OpenSSL', '~> 1.0.0'
			
end
