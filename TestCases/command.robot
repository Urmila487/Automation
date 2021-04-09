# for full Test suite run : robot Test Cases - Enter all test cases executed for one by one sequentially
#For keyword test suite run: robot *Reg.robot - Enter , only Reg started testcases executed
#For all test cases run : robot *.robot- Enter , all test cases executed one by one sequentially

#For Parallel Test case run: pabot --processes 2 TestCases\*.robot : at a time 2 Testcase run parallely
#For Parallel Test case run: pabot --processes 2 TestCases\dat*.robot : datadriven test case run
#For making new folder for save output : >pabot --processes 2 --outputdir Results TestCases\dat*.robot  - where Results
is new folder name

#For run.bat file : pabot --processes 2 --outputdir Results TestCases\*.robot - for executed file

#for jenkins file in command prompt: C:\Jenkins>java -jar jenkins.war

Go to cmd > until python script folder
Uninstall the latest lib using       pip uninstall robotframework-seleniumlibrary
Now install this lib using        pip install robotframework-seleniumlibrary==3.3.1

Pycharm --> FIle --> Settings --> Project Interpreter --> Install robotframework-seleniumlibrary==3.3.1 (Uninstall the latest (4.1.0)) --> OK and restart Pycharm IDE

Git -
sign in github account
open git bash
git command
1. git --version
2. set username - $ git config --global user.name "UrmilaVadi"
3. Set Email - $ git config --global user.email "gopi.ghadiya@gmail.com"
4. Check username and email : $ git config user.name , $ git config user.email
5. $ git config --list
6.clear git bash - clear

             # Create Local Repository

7. If need to change folder cd E: and enter and create new folder - mkdir CodeRepository
8. move into that folder $ cd CodeRepository and check path - $ pwd
9. to create hideen file in new folder $ git init
10. git status - $ git status
11. $ git add dragdrop.robot -- for commited file to unstage file
12. git . # put . means in this location all files should be commit
13. git commit -m "This is Automation started"  # For commitment
14. We have three stage 1. Untracked , 2. staged, 3. Tracked
15. First commit in local then push in master and other side take clone and one side take pull
16. After modified commited files then again staged it - git add dragdrop.robot
17. For staged to unstage $ git reset HEAD speedtest.robot
18. then again commit $ git commit -m "Added Speedtest file"
19. for check log ===   git log
20. After modified files then check what the changes - $ git diff speedtest.robot
21. After modified files if want to discarded changes then - $ git restore speedtest.robot

               # Push code to Remote repository

25. $ git remote -v
26. $ git remote add origin "https://github.com/Urmila487/Automation100.git"
27. $ git remote -v
28. $ git push origin master

             # Other Team member fetch that code means "Clone" code

29. $ git clone "https://github.com/Urmila487/Automation100.git"
30. $ ls
31. $ cd Automation 100\
32. $ ls


             # create batch files for all libraries like json and selenium and request library
             # Push local to remote library

 33. git bash - $ cd C:/Users/rvadi/PycharmProjects/APIAutomation
 34. git init - $ git init
 35. check git status - $ git status
 36. git add .
 37. git commit -m "Api automation files"
 38. git remote add origin "https://github.com/Urmila487/Robot-Api-Automation.git"
 39. check url is added - git remote -v
 40. git push -u origin master or main  ,  or  , git push origin master


Open jenkins in command prompt:
Download java jdk and jenkins.war file
1. cd C:\Users\rvadi\Jenkins
2. java -jar "jenkins.war" --httpPort-8086
3.













