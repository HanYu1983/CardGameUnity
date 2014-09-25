namespace HanLib

import UnityEngine
		
class TestBase(MonoBehaviour):
	def Should(truth, msg):
		if not truth:
			raise UnityException("[test]"+msg)
