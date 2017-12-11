pragma solidity ^0.4.0;
contract Degree {

    enum LetterGrade { A, AMinus, BPlus, B, BMinus, CPlus, C, CMinus, DPlus, D, DMinus, F }

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

    // Convert numeric score to LetterGrade
    function getLetterGrade(uint8 numGrade) public pure returns (LetterGrade letterGrade) {
        if (numGrade > 92) {
            return LetterGrade.A;
        } else if (numGrade > 89) {
            return LetterGrade.AMinus;
        } else if (numGrade > 86) {
            return LetterGrade.BPlus;
        } else if (numGrade > 82) {
            return LetterGrade.B;
        } else if (numGrade > 79) {
            return LetterGrade.BMinus;
        } else if (numGrade > 76) {
            return LetterGrade.CPlus;
        } else if (numGrade > 72) {
            return LetterGrade.C;
        } else if (numGrade > 69) {
            return LetterGrade.CMinus;
        } else if (numGrade > 66) {
            return LetterGrade.DPlus;
        } else if (numGrade > 62) {
            return LetterGrade.D;
        } else if (numGrade > 59) {
            return LetterGrade.DMinus;
        } else {
            return LetterGrade.F;
        }
    }

}
