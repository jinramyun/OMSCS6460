pragma solidity ^0.4.0;
contract Degree {

    struct Student {
        bool registered;
        address name;
    }
    struct Course {
        address courseName;
    }

    mapping(address => Course[]) coursesCompletedByStudent;
    Course[] requiredCourses;

    /// Create a new degree with $(_numCourses) required courses..
    function Degree(uint8 _numCourses) public {
        requiredCourses.length = _numCoursess;
    }

    /// Mark course $(toCourse) as completed.
    function completeCourse(uint8 toCourse) public {
    }

    /// Check if all requirements for Degree have been met.
    function completedDegree() public constant returns (uint8 _completedCourses) {
        uint256 requiredCourseCount = 0;
        for (uint8 prop = 0; prop < proposals.length; prop++)
            if (_completedCourses > requiredCourseCount) {
                winningVoteCount = proposals[prop].voteCount;
                _winningProposal = prop;
            }
    }
}
