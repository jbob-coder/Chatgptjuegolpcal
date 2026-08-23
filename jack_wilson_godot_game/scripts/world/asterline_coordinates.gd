class_name AsterlineCoordinates
extends RefCounted

const CELL_SIZE_M: float = 100.0
const REBASE_THRESHOLD_HORIZONTAL_M: float = 1600.0


static func source_enu_to_godot_local(source_enu: Vector3, anchor_enu: Vector3) -> Vector3:
	var delta := source_enu - anchor_enu
	return Vector3(delta.x, delta.z, -delta.y)


static func godot_local_to_source_enu(godot_local: Vector3, anchor_enu: Vector3) -> Vector3:
	return anchor_enu + Vector3(godot_local.x, -godot_local.z, godot_local.y)


static func source_horizontal_cell(source_enu: Vector3) -> Vector2i:
	return Vector2i(
		floori(source_enu.x / CELL_SIZE_M),
		floori(source_enu.y / CELL_SIZE_M)
	)


static func cell_anchor_enu(cell: Vector2i) -> Vector3:
	return Vector3(
		float(cell.x) * CELL_SIZE_M,
		float(cell.y) * CELL_SIZE_M,
		0.0
	)


static func horizontal_distance_from_origin(godot_local: Vector3) -> float:
	return Vector2(godot_local.x, godot_local.z).length()


static func requires_rebase(godot_local: Vector3) -> bool:
	return horizontal_distance_from_origin(godot_local) > REBASE_THRESHOLD_HORIZONTAL_M


static func rebase_delta_godot_local(old_anchor_enu: Vector3, new_anchor_enu: Vector3) -> Vector3:
	return source_enu_to_godot_local(old_anchor_enu, new_anchor_enu)

