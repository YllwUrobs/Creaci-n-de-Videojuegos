#macro TS 32

enum states {
	IDLE,
	WALK,
	RUN,
	DASH,
	ATACK,
	SHOT,
	HURT,
	DEAD
}

enum wpn {
	FISTS,
	BATE,
	SHOTGUN
}


enum enemystate {
	WANDER,
	FOLLOW
}

enum enemysub {
	IDLE,
	WALK,
	ATACK,
	SHOT,
	HURT,
	DEAD
}

global.drag = 0.93