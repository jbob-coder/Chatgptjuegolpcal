package com.jackwilson.worldlife.core

object OpenWorldIds {
    const val DISTRICT_CIVIC_CENTER = "district_civic_center"
    const val DISTRICT_NORTHLINE = "district_northline"
    const val DISTRICT_MERCER = "district_mercer"
    const val DISTRICT_HARBOR_WARD = "district_harbor_ward"

    const val LOCATION_HOME = "location_player_home"
    const val LOCATION_MERCER_MARKET = "location_mercer_market"
    const val LOCATION_MAYA_CAFE = "location_maya_cafe"
    const val LOCATION_CIVIC_PLAZA = "location_civic_plaza"
    const val LOCATION_CITY_HALL = "location_city_hall"
    const val LOCATION_NORTHLINE_COLLEGE = "location_northline_college"
    const val LOCATION_IRONWORKS_GYM = "location_ironworks_gym"
    const val LOCATION_HARBOR_SHIFT_OFFICE = "location_harbor_shift_office"
    const val LOCATION_HARBOR_TERMINAL = "location_harbor_terminal"
    const val LOCATION_THEO_HOME = "location_theo_home"
}

object OpenWorldCatalog {
    const val WIDTH = 60
    const val HEIGHT = 40
    const val MINUTES_PER_STEP = 1

    val districtWorlds: List<DistrictWorldDefinition> = listOf(
        DistrictWorldDefinition(
            district = WorldCatalog.arclightCity.districts.first { it.id == OpenWorldIds.DISTRICT_CIVIC_CENTER },
            bounds = WorldRect(0, 0, 29, 19),
        ),
        DistrictWorldDefinition(
            district = WorldCatalog.arclightCity.districts.first { it.id == OpenWorldIds.DISTRICT_NORTHLINE },
            bounds = WorldRect(30, 0, 59, 19),
        ),
        DistrictWorldDefinition(
            district = WorldCatalog.arclightCity.districts.first { it.id == OpenWorldIds.DISTRICT_MERCER },
            bounds = WorldRect(0, 20, 29, 39),
        ),
        DistrictWorldDefinition(
            district = WorldCatalog.arclightCity.districts.first { it.id == OpenWorldIds.DISTRICT_HARBOR_WARD },
            bounds = WorldRect(30, 20, 59, 39),
        ),
    )

    val locations: List<WorldLocationDefinition> = listOf(
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_HOME,
            districtId = OpenWorldIds.DISTRICT_MERCER,
            name = "Your Apartment",
            kind = "Home",
            description = "A small apartment that acts as your safe base in Mercer District.",
            position = WorldPosition(10, 28),
            action = WorldLocationActionDefinition(
                id = "world_action_rest_home",
                title = "Rest for an hour",
                timeMinutes = 60,
                effect = GameEffect(stats = StatDelta(health = 3, happiness = 3)),
                journalText = "You took time to recover at home.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_MERCER_MARKET,
            districtId = OpenWorldIds.DISTRICT_MERCER,
            name = "Mercer Market",
            kind = "Shop",
            description = "A dense block of food stalls, corner stores, and secondhand vendors.",
            position = WorldPosition(18, 25),
            action = WorldLocationActionDefinition(
                id = "world_action_market_meal",
                title = "Buy a proper meal (-$20)",
                timeMinutes = 30,
                effect = GameEffect(stats = StatDelta(health = 2, happiness = 2), money = -20),
                journalText = "You slowed down for a decent meal at Mercer Market.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_MAYA_CAFE,
            districtId = OpenWorldIds.DISTRICT_MERCER,
            name = "Maya's Cafe",
            kind = "Social",
            description = "A narrow late-night cafe where Maya often works and half the neighborhood eventually passes through.",
            position = WorldPosition(24, 32),
            action = WorldLocationActionDefinition(
                id = "world_action_maya_cafe",
                title = "Spend time with Maya (-$15)",
                timeMinutes = 60,
                effect = GameEffect(
                    stats = StatDelta(happiness = 4, charisma = 1),
                    money = -15,
                    relationship = RelationshipDelta(
                        npcId = StableIds.NPC_MAYA_ORTIZ,
                        closeness = 4,
                        trust = 2,
                    ),
                ),
                journalText = "You spent an unhurried hour talking with Maya at the cafe.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_CIVIC_PLAZA,
            districtId = OpenWorldIds.DISTRICT_CIVIC_CENTER,
            name = "Civic Plaza",
            kind = "Public",
            description = "A busy public square between government buildings, transit stops, and street vendors.",
            position = WorldPosition(14, 10),
            action = WorldLocationActionDefinition(
                id = "world_action_civic_network",
                title = "Meet people and network",
                timeMinutes = 60,
                effect = GameEffect(stats = StatDelta(charisma = 3), reputation = 2),
                journalText = "You worked the crowd at Civic Plaza and made useful new connections.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_CITY_HALL,
            districtId = OpenWorldIds.DISTRICT_CIVIC_CENTER,
            name = "Arclight City Hall",
            kind = "Government",
            description = "Permits, hearings, public contracts, and the machinery of city government.",
            position = WorldPosition(24, 8),
            action = WorldLocationActionDefinition(
                id = "world_action_city_hall_temp_work",
                title = "Take a civic temp assignment (+$70)",
                timeMinutes = 120,
                effect = GameEffect(
                    stats = StatDelta(happiness = -1, intelligence = 1),
                    money = 70,
                    reputation = 2,
                    world = WorldDelta(publicSafety = 1),
                ),
                journalText = "You completed a short city assignment and learned how Arclight actually runs.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_NORTHLINE_COLLEGE,
            districtId = OpenWorldIds.DISTRICT_NORTHLINE,
            name = "Northline College",
            kind = "Education",
            description = "Classrooms, labs, workshops, and a restless stream of students trying to move up.",
            position = WorldPosition(40, 10),
            action = WorldLocationActionDefinition(
                id = "world_action_college_study",
                title = "Study for two hours (-$25)",
                timeMinutes = 120,
                effect = GameEffect(
                    stats = StatDelta(intelligence = 3, happiness = -1),
                    money = -25,
                    world = WorldDelta(opportunity = 1),
                ),
                journalText = "You spent two focused hours studying at Northline College.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_IRONWORKS_GYM,
            districtId = OpenWorldIds.DISTRICT_NORTHLINE,
            name = "Ironworks Gym",
            kind = "Fitness",
            description = "Old concrete, new equipment, competitive regulars, and no patience for excuses.",
            position = WorldPosition(49, 15),
            action = WorldLocationActionDefinition(
                id = "world_action_gym_train",
                title = "Train hard (-$15)",
                timeMinutes = 90,
                effect = GameEffect(
                    stats = StatDelta(health = 2, happiness = 1, fitness = 4),
                    money = -15,
                    reputation = 1,
                ),
                journalText = "You put in a hard session at Ironworks Gym.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_HARBOR_SHIFT_OFFICE,
            districtId = OpenWorldIds.DISTRICT_HARBOR_WARD,
            name = "Harbor Shift Office",
            kind = "Work",
            description = "A dispatch office matching short-notice workers with freight and warehouse shifts.",
            position = WorldPosition(42, 29),
            action = WorldLocationActionDefinition(
                id = "world_action_harbor_shift",
                title = "Work a short shift (+$90)",
                timeMinutes = 120,
                effect = GameEffect(
                    stats = StatDelta(happiness = -2, fitness = 1),
                    money = 90,
                    reputation = 1,
                    world = WorldDelta(economy = 1),
                ),
                journalText = "You picked up a short freight shift in Harbor Ward.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_HARBOR_TERMINAL,
            districtId = OpenWorldIds.DISTRICT_HARBOR_WARD,
            name = "Arclight Harbor Terminal",
            kind = "Transit",
            description = "Cargo cranes, commuter ferries, truck lanes, and the city's loudest sunrise.",
            position = WorldPosition(52, 34),
            action = WorldLocationActionDefinition(
                id = "world_action_harbor_observe",
                title = "Explore the terminal",
                timeMinutes = 45,
                effect = GameEffect(stats = StatDelta(intelligence = 1, happiness = 1)),
                journalText = "You explored the harbor terminal and got a better feel for the city's movement and trade.",
            ),
        ),
        WorldLocationDefinition(
            id = OpenWorldIds.LOCATION_THEO_HOME,
            districtId = OpenWorldIds.DISTRICT_CIVIC_CENTER,
            name = "Theo's Apartment",
            kind = "Family",
            description = "Theo's place, close enough to Civic Center that you can hear traffic late into the night.",
            position = WorldPosition(6, 15),
            action = WorldLocationActionDefinition(
                id = "world_action_visit_theo",
                title = "Visit Theo",
                timeMinutes = 60,
                effect = GameEffect(
                    stats = StatDelta(happiness = 3),
                    relationship = RelationshipDelta(
                        npcId = StableIds.NPC_THEO_PARK,
                        closeness = 4,
                        trust = 3,
                    ),
                ),
                journalText = "You spent some real time catching up with Theo.",
            ),
        ),
    )

    fun initialState(): OpenWorldState = OpenWorldState(
        position = location(OpenWorldIds.LOCATION_HOME)!!.position,
        currentDistrictId = OpenWorldIds.DISTRICT_MERCER,
        currentLocationId = OpenWorldIds.LOCATION_HOME,
        minuteOfDay = 8 * 60,
        dayOfYear = 1,
        discoveredLocationIds = listOf(OpenWorldIds.LOCATION_HOME),
        stepCount = 0,
    )

    fun districtAt(position: WorldPosition): DistrictWorldDefinition =
        districtWorlds.firstOrNull { it.bounds.contains(position) } ?: districtWorlds[2]

    fun location(id: String?): WorldLocationDefinition? = locations.firstOrNull { it.id == id }

    fun locationAt(position: WorldPosition): WorldLocationDefinition? =
        locations.firstOrNull { it.position == position }

    fun discoverNear(position: WorldPosition, current: List<String>): List<String> {
        val discovered = locations
            .filter { manhattanDistance(position, it.position) <= 2 }
            .map { it.id }
        return (current + discovered).distinct()
    }

    fun npcPresences(minuteOfDay: Int): List<NpcWorldPresence> {
        val hour = (minuteOfDay.coerceIn(0, 1439) / 60)
        val mayaLocation = when (hour) {
            in 9..16 -> OpenWorldIds.LOCATION_MAYA_CAFE
            in 17..19 -> OpenWorldIds.LOCATION_MERCER_MARKET
            else -> OpenWorldIds.LOCATION_MAYA_CAFE
        }
        val theoLocation = when (hour) {
            in 8..16 -> OpenWorldIds.LOCATION_CITY_HALL
            else -> OpenWorldIds.LOCATION_THEO_HOME
        }
        return listOf(
            NpcWorldPresence(StableIds.NPC_MAYA_ORTIZ, mayaLocation),
            NpcWorldPresence(StableIds.NPC_THEO_PARK, theoLocation),
        )
    }

    fun manhattanDistance(a: WorldPosition, b: WorldPosition): Int =
        kotlin.math.abs(a.x - b.x) + kotlin.math.abs(a.y - b.y)
}
