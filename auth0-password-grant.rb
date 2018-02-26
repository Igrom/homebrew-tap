class Auth0PasswordGrant < Formula
  desc "CLI Auth0 access tokens through the Resource Owner Password Grant"
  homepage "https://github.com/Igrom/auth0-password-grant"
  url "https://github.com/Igrom/auth0-password-grant/archive/1.0.6.tar.gz"
  version "1.0.6"
  sha256 "feefa494505220fcae2ed9e1a905a704ec56baacb63d077257cbf1fbfe5e0785"
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
