class Auth0PasswordGrant < Formula
  desc "CLI Auth0 access tokens through the Resource Owner Password Grant"
  homepage "https://github.com/Igrom/auth0-password-grant"
  url "https://github.com/Igrom/auth0-password-grant/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "cb36bd57dc7890bcb003be0025afaded0142f9985ad0c86b5f2444681ff41d70"
   def install
     system "make", "CONFIG_PATH=#{etc}/auth0-password-grant"
     bin.install "bin/auth0-password-grant"

     system "mkdir", "-p", "conf/auth0-password-grant"
     system "cp", "config", "conf/auth0-password-grant"
     etc.install "conf/auth0-password-grant"

     man.install "doc/man1", "doc/man5"
  end
   test do
    system "#{bin}/auth0-password-grant", "-v"
  end
end
