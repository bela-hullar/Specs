Pod::Spec.new do |s|
  s.name         = 'EncryptedPersistentStore'
  s.version      = '1.0.0'
  s.summary      = 'Encrypted Core Data NSPersistentStore using SQLCipher for iOS.'
  s.description  = <<-DESC
                   Core Data encryption for NSPersistentStore with NSSQLiteStoreType type.
									 
									 It includes:
                   * NSIncrementalStore implementation by MITRE Corporation.
									 * SQLCipher for SQLite encryption/decryption.
                   DESC

  s.homepage     = "https://github.com/centralway/EncryptedPersistentStore"
	
  s.license      = 'MIT'
  s.author       = { 'Luis Laugga' => 'luis.laugga@centralway.com' }
  s.source       = { :git => 'git@github.com:centralway/EncryptedPersistentStore.git', :tag => s.version.to_s }

  s.frameworks    = ['CoreData', 'Security']
  s.requires_arc  = true

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.9'
  s.source_files = ['lib/*']
  s.public_header_files = ['lib/*.h']
  s.prefix_header_file = 'support/EncryptedPersistentStore-Prefix.pch'
  
  s.dependency 'SQLCipher', '~> 3.1.0'

  s.xcconfig      = {
    'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_CC'
  }

end
