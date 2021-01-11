import ballerina/cloud as _;
import ballerina/math;
import ballerina/http;
import ballerina/io;

service /Math on new http:Listener(9090) {
    resource function get getSqrt(http:Caller caller, http:Request req) returns error? {
        check caller->ok(sumSqrt());
    }
}

function sumSqrt() returns string {
     float x = 0.0001;
     float i = 0;
     while (i < 1000000) {
        x = x + math:sqrt(i);
        i = i + 1;
    }
    io:println(x);
    string sum = "ok";
    return sum; 
}
