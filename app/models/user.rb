class User < ApplicationRecord
  has_many :games
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
  elsif user == nil
        return nil, 'El usuario no existe'
    else
      return user, nil
    end
  end

  def games
      Game.where(user_id: self.id).all
  end

  def not_my_games
    Game.where.not(user_id: self.id).all
  end

  def active_toggle
    self.update(active: !self.active)
  end
end
