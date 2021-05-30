cls
@echo off

if "%1" == "" ( 
    echo Git publish script version 1
<<<<<<< HEAD
    echo Usage : publish.bat [comments without quotes]
=======
    echo Usage : publish.sh [comment_between_quotes]
>>>>>>> 37603e7a2b1de9e7c518949a43365ca1f9597d01
    goto :end
)

git add *
git commit -a -m "%*"
git push origin master

:end
echo Done

