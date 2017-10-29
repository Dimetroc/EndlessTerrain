﻿Shader "VertexInputSimple" {
	SubShader{
		Pass{
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"

	struct v2f {
		fixed4 color : COLOR;
	};

	v2f vert(appdata_base v)
	{
		v2f o;
		o.color.w = 1.0;
		return o;
	}

	fixed4 frag(v2f i) : SV_Target{ return i.color; }
		ENDCG
	}
	}
}