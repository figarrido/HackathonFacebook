class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :nickname,  presence: true
  validates :password,  presence: true, :on => :create
  validates :mail, presence: true, format: { with: VALID_EMAIL_REGEX }

  def self.login(mail, password)
    user = User.find_by_mail(mail)
    user_aux = User.find_by_password(password)
    if mail.blank?
      return nil, "Debes ingresar un e-mail"
    elsif user != user_aux
      return nil, "Usuario o clave incorrecto"
    else
      return user, nil
    end
  end

  def active_toggle
    self.update(active: !self.active)
  end
end
