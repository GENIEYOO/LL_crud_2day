
     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 


Welcome to your Rails project on Cloud9 IDE!

To get started, just do the following:

1. Run the project with the "Run Project" button in the menu bar on top of the IDE.
2. Preview your new app by clicking on the URL that appears in the Run panel below (https://HOSTNAME/).

Happy coding!
The Cloud9 IDE team


## Support & Documentation

Visit http://docs.c9.io for support, or to learn more about using Cloud9 IDE. 
To watch some training videos, visit http://www.youtube.com/user/c9ide


#로그인 
# 0.로그인으로 받아온 정보가 유저의 DB에 있는지 확인?
params [:email]

User.find()
    if User.exists?(email: params [:email])
        user = User.find_by(email: params[:email])
        if user.password == params[:password]
         # 로그인 허용은 세션 저장과 같다
         session = [:user_id] = user.id
         end
    end
end
    


# 1.만약에 있다면, 비밀번호가 맞는지 확인?
# 2. 그것도 만약에 맞다면, 로그인 시키기
