```json
{
	"SETTING_JSON": {
		"CTRL_SETTING": {
			"CID": "AABBCC000000 //컨트롤러 맥주소",
			"SETTEMP": "000000FFFAAABBCDFDDDFAABBCCD~ .. // HEX STRING 00~FF 48개 들어갑니다  1BYTE 2자리 STRING",
			"TEMPGAP": "[int], // 냉동기 및 제상히터 온도 편차 설정",
			"HEATTEMP": "[int], // 제상히터 온도 설정",
			"ICETYPE": "[int], // 에어컨/냉동기 타입 정의 0-냉동기 1-에어컨1 2-에어컨2 3-에어컨3",
			"ALARMTYPE": "[int], // 알람 메세지 전송 타입 0-고온 경보 1-저온 경보 2-네트워크 경보",
			"ALRAMTEMPH": "[int], // 고온경보 한계설정",
			"ALRAMTMEPL": "[int], //저온경보 한계설정",
			"TEL": "01012345678, //전송할 메세지 전화번호",
			"AWSBIT": "[int] // AWS사용여부 0-사용 안함 1-사용"
		}
	},
	"UNIT_SETTING": [
		{
			"UID": "[int] //작동기 아이디",
			"UTYPE": "[int] //작동기 온/오프-오픈/클로즈 정의 0-온/오프 1-오픈/클로즈",
			"UGROUP": "[int] //작동기 그룹 정의",
			"UCH": "[int] //작동기 온오프 채널",
			"UOPENCH": "[int] //작동기 오픈 채널",
			"UCLOSECH": "[int] // 작동기 클로즈 채널",
			"UMVTIME": "[int] //작동기 오픈 동작시간",
			"USTTIME": "[int] //작동기 클로즈 동작시간",
			"UOPENTIME": "[int] //작동기 온 동작시간",
			"UCLOSETIME": "[int] //작동기 오프 동작시간",
			"UOPTYPE": "[int] //작동시 동작유형 정의 0-수동 1-자동(타이머) 2-원격",
			"UTIMER": "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
		},
		{
			"UID": "[int] //작동기 아이디",
			"UTYPE": "[int] //작동기 온/오프-오픈/클로즈 정의 0-온/오프 1-오픈/클로즈",
			"UGROUP": "[int] //작동기 그룹 정의",
			"UCH": "[int] //작동기 온오프 채널",
			"UOPENCH": "[int] //작동기 오픈 채널",
			"UCLOSECH": "[int] // 작동기 클로즈 채널",
			"UMVTIME": "[int] //작동기 오픈 동작시간",
			"USTTIME": "[int] //작동기 클로즈 동작시간",
			"UOPENTIME": "[int] //작동기 온 동작시간",
			"UCLOSETIME": "[int] //작동기 오프 동작시간",
			"UOPTYPE": "[int] //작동시 동작유형 정의 0-수동 1-자동(타이머) 2-원격",
			"UTIMER": "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
		}
	],
	"SENSOR_SETTING": [
		{
			"SID": "[int] //센서 아이디 0~7",
			"SCH": "[int], //센서 채널 0~7",
			"SRESERVERD": "[int], //센서 예약어 정의 ",
			"SMULT": "[float], //센서 보정값계수(멀티값) A : 0.1234",
			"SOFFSET": "[float], //센서 보정값계수(오프셋값) B :0.1234",
			"SEQ": "[y=ax+b]"
		},
		{
			"SID": "[int] //센서 아이디 0~7",
			"SCH": "[int], //센서 채널 0~7",
			"SRESERVERD": "[int], //센서 예약어 정의 ",
			"SMULT": "[float], //센서 보정값계수(멀티값) A : 0.1234",
			"SOFFSET": "[float], //센서 보정값계수(오프셋값) B :0.1234",
			"SEQ": "[y=ax+b]"
		}
		
	],
	"REAL_DATA": {
		"CID": "AABBCC000000 // Client ID",
		"SENSOR_VALUE": [
			{
				"sid": "[int]// Sensor ID (0)",
				"value": "[float]// Sensor value (e.g., 10.23)"
			},
			{
				"sid": "[int]",
				"value": "[float]"
			}
		],
		"UNIT_STATUS": [
			{
				"uid": "[int] // Unit ID (0)",
				"status": "[int] // Status: 0, 1, 2, 3, 4 (off/on/open/stop/close)"
			}
		]
	}
}
```