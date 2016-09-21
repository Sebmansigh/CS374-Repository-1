#Author: Sebastian Snyder, Alani Peters, Cole Spears
Feature: Test Feature

Background Outline: Prereqs
	Given "<courseid>" with "<crn>" with "<prereq>"
	
Example:
| courseid | crn      | prereq     |
| CS115    | 10457    | NA         |
| CS116    | 10916    | CS115      |
| CS120    | 10859    | NA         |
| CS130    | 10852    | CS120      |
| CS311    | 10850    | CS130      |

Background Outline: Students
	Given "<bannerid>" with "<crn1>" with "<grade>"	
	
Examples:
| bannerid  | crn1  | grade |
| 000481289 | 10457 | A     |
| 000481199 | 10880 | B     |
| 000321267 | 10338 | F     |
	
	
	
	
	
	Given <banner> and <crn>
	Then the student is <allowed> to be enrolled in the course

Examples:
| banner      | crn     | allowed      |
| "000481289" | "10961" | "allowed"    |
| "000481199" | "10880" | "allowed"    |
| "000321267" | "10338" | "disallowed" |
