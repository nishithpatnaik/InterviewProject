*** Variables ***
#Configutations
${BROWSER} =    chrome
${LOGIN_URL} =    https://rahulshettyacademy.com/loginpagePractise/#
${PROTO_URL} =    https://rahulshettyacademy.com/angularpractice/
#Input Data
&{CREDENTIALS1} =    USERNAME=rahulshettyacademy  PASSWORD=learning     ROLE=Teacher
&{CREDENTIALS2} =    USERNAME=rahulshettyacademy  PASSWORD=learning     ROLE=Consultant
&{CREDENTIALS3} =    USERNAME=rahulshettyacademy  PASSWORD=learning     ROLE=Student

#Input Data via CSV File
${CSV_FILEPATH} =    C:\\Users\\CR7\\PycharmProjects\\RobotFramework\\InterviewProject\\Resources\\TestData\\CSV_Demo.csv