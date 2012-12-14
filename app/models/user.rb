# encoding: utf-8
class User < ActiveRecord::Base
  attr_accessible :email, :fullname, :ic_card, :password_answer, :password_hash, :password_question, :password_salt, :username,:password,:password_confirmation
  attr_accessor :password_confirmation
  has_many :book_assesses
  has_many :topics
  has_many :replies
  has_many :book_counts

  validates :username,:presence =>{:message => "用户名不能为空"},:uniqueness => {:message => "用户名已经被注册"}
  #validates :password,:confirmation =>{:message => "密码不一致"},:presence =>{:message => "密码不能为空"}
  #validates :email,:presence =>{:message => "email不能为空"},:uniqueness =>{:message => '邮箱已经被使用'}
	def password
    @password
  end

  def password=(pass)
    @password = pass

    add_password(pass)
  end

  def add_password(pass)
    password_salt = Array.new(10){rand(10).to_s(16)}.join
    pass = Digest::SHA256.hexdigest(pass + password_salt)
    self.password_hash,self.password_salt = pass,password_salt
  end

  def self.validate_loginx(username,password)
    user = User.find_by_username(username)
    if user && user.password_hash == Digest::SHA256.hexdigest(password + user.password_salt)
      return user
    end
    false
  end
end
