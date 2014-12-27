class FtpHelper
  def initialize(ftp_server, user, password)
    require 'net/ftp'
    @ftp_conn = Net::FTP.new(ftp_server)

    @username = user
    @pswd = password

  end

  def send_file(file, folder)
    @ftp_conn.passive = true
    @ftp_conn.login(user=@username,passwd=@pswd)
    @ftp_conn.chdir(folder)
    @ftp_conn.debug_mode = true
    @ftp_conn.putbinaryfile(file)
    @ftp_conn.close
  end
end