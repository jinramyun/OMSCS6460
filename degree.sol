pragma solidity ^0.4.0;
contract Degree {

    address student;
    mapping(bytes32 => uint8) courseGrades;
    bytes32[] requiredCourses;

    /// Create a new degree requiring completion of $(_requiredCourses).
    function Degree(bytes32[] _requiredCourses) public {
        requiredCourses = _requiredCourses;
    }

    /// Record grade $(toGrade) for course $(toCourse).
    function completeCourse(bytes32 toCourse,uint8 toGrade) public {
        courseGrades[toCourse] = toGrade;
    }

    /// Check if all requirements for Degree have been met.
    function completedDegree() public constant returns (bool _completedDegree) {
        for (uint8 prop = 0; prop < requiredCourses.length; prop++)
            if (courseGrades[requiredCourses[prop]] < 64) {
                return false;
            }
        return true;
    }

}
