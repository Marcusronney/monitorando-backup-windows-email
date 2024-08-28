# Enviar E-mail quando apresentar problema

$emailSmtpServer = "email-ssl.com.br" # Servidor SMTP.
$emailSmtpServerPort = "587" # Porta do Servidor SMTP.
$emailSmtpUser = "email_que_vai_enviar@algo.com" # Usuário do e-mail.
$emailSmtpPass = "Senha_do_email" # Senha do e-mail.

$emailMessage = New-Object System.Net.Mail.MailMessage
$emailMessage.From = "Título do E-mail <email_que_vai_enviar@algo.com>" # E-mail remetente.
$emailMessage.To.Add("email_que_vai_receber@algo.com") # E-mail destinatário.
$emailMessage.Subject = "Assunto do Email" # Assunto do e-mail.
$emailMessage.IsBodyHtml = $true # Habilita o e-mail HTML.
$emailMessage.Body = "Coloque a mensagem que preferir" # Mensagem do e-mail.

$SMTPClient = New-Object System.Net.Mail.SmtpClient($emailSmtpServer, $emailSmtpServerPort)
$SMTPClient.EnableSsl = $true # Habilita a criptografia SSL no email.
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($emailSmtpUser, $emailSmtpPass);
$SMTPClient.Send($emailMessage)
