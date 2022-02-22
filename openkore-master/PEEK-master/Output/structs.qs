var indent = '';
function ZSERVER_ADDR() {
  var result = indent + 'ZSERVER_ADDR {\n';
  indent += '\t';
  result += indent + 'ip = ' + changeToIPAddress(reader.fetchUint32()) + '\n';
  result += indent + 'port = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function SERVER_ADDR() {
  var result = indent + 'SERVER_ADDR {\n';
  indent += '\t';
  result += indent + 'ip = ' + changeToIPAddress(reader.fetchUint32()) + '\n';
  result += indent + 'port = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[20] = ' + changeToString(reader.fetchUint8Arr(20)) + '\n';
  result += indent + 'usercount = ' + reader.fetchUint16() + '\n';
  result += indent + 'state = ' + reader.fetchUint16() + '\n';
  result += indent + 'property = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CHARACTER_INFO_NEO_UNION() {
  var result = indent + 'CHARACTER_INFO_NEO_UNION {\n';
  indent += '\t';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'money = ' + reader.fetchInt32() + '\n';
  result += indent + 'jobexp = ' + reader.fetchInt32() + '\n';
  result += indent + 'joblevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'bodystate = ' + reader.fetchInt32() + '\n';
  result += indent + 'healthstate = ' + reader.fetchInt32() + '\n';
  result += indent + 'effectstate = ' + reader.fetchInt32() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'honor = ' + reader.fetchInt32() + '\n';
  result += indent + 'jobpoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxhp = ' + reader.fetchInt32() + '\n';
  result += indent + 'sp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxsp = ' + reader.fetchInt16() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'sppoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Str = ' + reader.fetchUint8() + '\n';
  result += indent + 'Agi = ' + reader.fetchUint8() + '\n';
  result += indent + 'Vit = ' + reader.fetchUint8() + '\n';
  result += indent + 'Int = ' + reader.fetchUint8() + '\n';
  result += indent + 'Dex = ' + reader.fetchUint8() + '\n';
  result += indent + 'Luk = ' + reader.fetchUint8() + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'haircolor = ' + reader.fetchUint8() + '\n';
  result += indent + 'bIsChangedCharName = ' + changeToString(reader.fetchInt16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CHARACTER_INFO_NEO_UNION2() {
  var result = indent + 'CHARACTER_INFO_NEO_UNION2 {\n';
  indent += '\t';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'money = ' + reader.fetchInt32() + '\n';
  result += indent + 'jobexp = ' + reader.fetchInt32() + '\n';
  result += indent + 'joblevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'bodystate = ' + reader.fetchInt32() + '\n';
  result += indent + 'healthstate = ' + reader.fetchInt32() + '\n';
  result += indent + 'effectstate = ' + reader.fetchInt32() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'honor = ' + reader.fetchInt32() + '\n';
  result += indent + 'jobpoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxhp = ' + reader.fetchInt32() + '\n';
  result += indent + 'sp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxsp = ' + reader.fetchInt16() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'sppoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Str = ' + reader.fetchUint8() + '\n';
  result += indent + 'Agi = ' + reader.fetchUint8() + '\n';
  result += indent + 'Vit = ' + reader.fetchUint8() + '\n';
  result += indent + 'Int = ' + reader.fetchUint8() + '\n';
  result += indent + 'Dex = ' + reader.fetchUint8() + '\n';
  result += indent + 'Luk = ' + reader.fetchUint8() + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'haircolor = ' + reader.fetchUint8() + '\n';
  result += indent + 'bIsChangedCharName = ' + changeToString(reader.fetchInt16()) + '\n';
  result += indent + 'Robe = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CHARACTER_INFO_NEO_UNION3() {
  var result = indent + 'CHARACTER_INFO_NEO_UNION3 {\n';
  indent += '\t';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'money = ' + reader.fetchInt32() + '\n';
  result += indent + 'jobexp = ' + reader.fetchInt32() + '\n';
  result += indent + 'joblevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'bodystate = ' + reader.fetchInt32() + '\n';
  result += indent + 'healthstate = ' + reader.fetchInt32() + '\n';
  result += indent + 'effectstate = ' + reader.fetchInt32() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'honor = ' + reader.fetchInt32() + '\n';
  result += indent + 'jobpoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxhp = ' + reader.fetchInt32() + '\n';
  result += indent + 'sp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxsp = ' + reader.fetchInt16() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'sppoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Str = ' + reader.fetchUint8() + '\n';
  result += indent + 'Agi = ' + reader.fetchUint8() + '\n';
  result += indent + 'Vit = ' + reader.fetchUint8() + '\n';
  result += indent + 'Int = ' + reader.fetchUint8() + '\n';
  result += indent + 'Dex = ' + reader.fetchUint8() + '\n';
  result += indent + 'Luk = ' + reader.fetchUint8() + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'haircolor = ' + reader.fetchUint8() + '\n';
  result += indent + 'bIsChangedCharName = ' + changeToString(reader.fetchInt16()) + '\n';
  result += indent + 'lastMap[16] = ' + reader.fetchUint8Arr(16) + '\n';
  result += indent + 'DeleteDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'Robe = ' + reader.fetchInt32() + '\n';
  result += indent + 'SlotAddon = ' + reader.fetchInt32() + '\n';
  result += indent + 'RenameAddon = ' + changeToString(reader.fetchInt32()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function EQUIPSLOTINFO() {
  var result = indent + 'EQUIPSLOTINFO {\n';
  indent += '\t';
  result += indent + 'card1 = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'card2 = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'card3 = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'card4 = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ITEMLIST_EQUIP_ITEM() {
  var result = indent + 'ITEMLIST_EQUIP_ITEM {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += indent + 'RefiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'bindOnEquipType = ' + reader.fetchUint16() + '\n';
  result += indent + 'wItemSpriteNumber = ' + reader.fetchUint16() + '\n';
  result += indent + 'Flag = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ITEMLIST_EQUIP_ITEM2() {
  var result = indent + 'ITEMLIST_EQUIP_ITEM2 {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'location = ' + reader.fetchUint32() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint32() + '\n';
  result += indent + 'RefiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'bindOnEquipType = ' + reader.fetchUint16() + '\n';
  result += indent + 'wItemSpriteNumber = ' + reader.fetchUint16() + '\n';
  result += indent + 'Flag = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ITEMLIST_NORMAL_ITEM() {
  var result = indent + 'ITEMLIST_NORMAL_ITEM {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'Flag = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function NORMALITEM_EXTRAINFO() {
  var result = indent + 'NORMALITEM_EXTRAINFO {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function NORMALITEM_EXTRAINFO2() {
  var result = indent + 'NORMALITEM_EXTRAINFO2 {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function NORMALITEM_EXTRAINFO3() {
  var result = indent + 'NORMALITEM_EXTRAINFO3 {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function EQUIPMENTITEM_EXTRAINFO() {
  var result = indent + 'EQUIPMENTITEM_EXTRAINFO {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'RefiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function EQUIPMENTITEM_EXTRAINFO2() {
  var result = indent + 'EQUIPMENTITEM_EXTRAINFO2 {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'RefiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function EQUIPMENTITEM_EXTRAINFO3() {
  var result = indent + 'EQUIPMENTITEM_EXTRAINFO3 {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'WearState = ' + reader.fetchUint16() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'RefiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'bindOnEquipType = ' + reader.fetchUint16() + '\n';
  result += indent + 'wItemSpriteNumber = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PURCHASE_ITEM_FROMMC() {
  var result = indent + 'PURCHASE_ITEM_FROMMC {\n';
  indent += '\t';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchUint8() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PURCHASE_ITEM() {
  var result = indent + 'PURCHASE_ITEM {\n';
  indent += '\t';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  result += indent + 'discountprice = ' + reader.fetchInt32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function SELL_ITEM() {
  var result = indent + 'SELL_ITEM {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  result += indent + 'overchargeprice = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function STORE_ITEM() {
  var result = indent + 'STORE_ITEM {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'Price = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function BUYING_STORE_ITEMLIST() {
  var result = indent + 'BUYING_STORE_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function DETAIL_EXP_INFO() {
  var result = indent + 'DETAIL_EXP_INFO {\n';
  indent += '\t';
  result += indent + 'InfoType = ' + reader.fetchUint8() + '\n';
  result += indent + 'Exp = ' + reader.fetchInt16() + '\n';
  result += indent + 'Death = ' + reader.fetchInt16() + '\n';
  result += indent + 'Drop = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function DETAIL_EXP_INFO2() {
  var result = indent + 'DETAIL_EXP_INFO2 {\n';
  indent += '\t';
  result += indent + 'InfoType = ' + reader.fetchUint8() + '\n';
  result += indent + 'Exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'Death = ' + reader.fetchInt32() + '\n';
  result += indent + 'Drop = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PARTY_RECRUIT_DETAIL() {
  var result = indent + 'PARTY_RECRUIT_DETAIL {\n';
  indent += '\t';
  result += indent + 'Level = ' + reader.fetchInt16() + '\n';
  result += indent + 'Notice[37] = ' + reader.fetchInt8Arr(37) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PARTY_BOOKING_DETAIL() {
  var result = indent + 'PARTY_BOOKING_DETAIL {\n';
  indent += '\t';
  result += indent + 'Level = ' + reader.fetchInt16() + '\n';
  result += indent + 'MapID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Job[6] = ' + appendJobName(reader.fetchInt16Arr(6)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PARTY_BOOKING_AD_INFO() {
  var result = indent + 'PARTY_BOOKING_AD_INFO {\n';
  indent += '\t';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'ExpireTime = ' + reader.fetchInt32() + '\n';
  result += PARTY_BOOKING_DETAIL().replace('PARTY_BOOKING_DETAIL', 'PARTY_BOOKING_DETAIL Detail');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function SKILLINFO() {
  var result = indent + 'SKILLINFO {\n';
  indent += '\t';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchInt32() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'spcost = ' + reader.fetchInt16() + '\n';
  result += indent + 'attackRange = ' + reader.fetchInt16() + '\n';
  result += indent + 'skillName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'upgradable = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ZC_MISSION_HUNT() {
  var result = indent + 'ZC_MISSION_HUNT {\n';
  indent += '\t';
  result += indent + 'mobGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'huntCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'mobName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function MOB_HUNTING() {
  var result = indent + 'MOB_HUNTING {\n';
  indent += '\t';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'mobGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'maxCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function GUILD_REG_POSITION_INFO() {
  var result = indent + 'GUILD_REG_POSITION_INFO {\n';
  indent += '\t';
  result += indent + 'positionID = ' + reader.fetchInt32() + '\n';
  result += indent + 'right = ' + reader.fetchInt32() + '\n';
  result += indent + 'ranking = ' + reader.fetchInt32() + '\n';
  result += indent + 'payRate = ' + reader.fetchInt32() + '\n';
  result += indent + 'posName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function GUILD_MEMBER_INFO() {
  var result = indent + 'GUILD_MEMBER_INFO {\n';
  indent += '\t';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'headPalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'sex = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'contributionExp = ' + reader.fetchInt32() + '\n';
  result += indent + 'currentState = ' + reader.fetchInt32() + '\n';
  result += indent + 'positionID = ' + reader.fetchInt32() + '\n';
  result += indent + 'intro[50] = ' + reader.fetchInt8Arr(50) + '\n';
  result += indent + 'charname[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function MEMBER_POSITION_INFO() {
  var result = indent + 'MEMBER_POSITION_INFO {\n';
  indent += '\t';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'positionID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function GUILD_MEMBER_POSITION_INFO() {
  var result = indent + 'GUILD_MEMBER_POSITION_INFO {\n';
  indent += '\t';
  result += indent + 'positionID = ' + reader.fetchInt32() + '\n';
  result += indent + 'right = ' + reader.fetchInt32() + '\n';
  result += indent + 'ranking = ' + reader.fetchInt32() + '\n';
  result += indent + 'payRate = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ShortCutKey() {
  var result = indent + 'ShortCutKey {\n';
  indent += '\t';
  result += indent + 'isSkill = ' + reader.fetchInt8() + '\n';
  result += indent + 'ID = ' + appendShortcutName(reader.fetchUint32()) + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function MAKABLEITEM_INFO() {
  var result = indent + 'MAKABLEITEM_INFO {\n';
  indent += '\t';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'material_ID[3] = ' + reader.fetchUint16Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function REPAIRITEM_INFO() {
  var result = indent + 'REPAIRITEM_INFO {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function IRMAILID() {
  var result = indent + 'IRMAILID {\n';
  indent += '\t';
  result += indent + 'office = ' + reader.fetchUint8() + '\n';
  result += indent + 'id = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN() {
  var result = indent + 'PACKET_CA_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Passwd[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_ENTER() {
  var result = indent + 'PACKET_CH_ENTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'userLevel = ' + reader.fetchUint32() + '\n';
  result += indent + 'clientType = ' + reader.fetchUint16() + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_SELECT_CHAR() {
  var result = indent + 'PACKET_CH_SELECT_CHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_MAKE_CHAR() {
  var result = indent + 'PACKET_CH_MAKE_CHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Str = ' + reader.fetchUint8() + '\n';
  result += indent + 'Agi = ' + reader.fetchUint8() + '\n';
  result += indent + 'Vit = ' + reader.fetchUint8() + '\n';
  result += indent + 'Int = ' + reader.fetchUint8() + '\n';
  result += indent + 'Dex = ' + reader.fetchUint8() + '\n';
  result += indent + 'Luk = ' + reader.fetchUint8() + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'headPal = ' + reader.fetchInt16() + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_DELETE_CHAR() {
  var result = indent + 'PACKET_CH_DELETE_CHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'key[40] = ' + reader.fetchInt8Arr(40) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACCEPT_LOGIN() {
  var result = indent + 'PACKET_AC_ACCEPT_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'userLevel = ' + reader.fetchUint32() + '\n';
  result += indent + 'lastLoginIP = ' + reader.fetchUint32() + '\n';
  result += indent + 'lastLoginTime[26] = ' + reader.fetchInt8Arr(26) + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += SERVER_ADDR().replace('SERVER_ADDR', 'SERVER_ADDR ServerList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REFUSE_LOGIN() {
  var result = indent + 'PACKET_AC_REFUSE_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  result += indent + 'blockDate[20] = ' + reader.fetchInt8Arr(20) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACCEPT_ENTER_NEO_UNION() {
  var result = indent + 'PACKET_HC_ACCEPT_ENTER_NEO_UNION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'TotalSlotNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'PremiumStartSlot = ' + reader.fetchUint8() + '\n';
  result += indent + 'PremiumEndSlot = ' + reader.fetchUint8() + '\n';
  result += indent + 'dummy1_beginbilling = ' + reader.fetchInt8() + '\n';
  result += indent + 'code = ' + reader.fetchUint32() + '\n';
  result += indent + 'time1 = ' + reader.fetchUint32() + '\n';
  result += indent + 'time2 = ' + reader.fetchUint32() + '\n';
  result += indent + 'dummy2_endbilling[7] = ' + reader.fetchInt8Arr(7) + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CHARACTER_INFO_NEO_UNION3().replace('CHARACTER_INFO_NEO_UNION3', 'CHARACTER_INFO_NEO_UNION3 charInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_REFUSE_ENTER() {
  var result = indent + 'PACKET_HC_REFUSE_ENTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACCEPT_MAKECHAR_NEO_UNION() {
  var result = indent + 'PACKET_HC_ACCEPT_MAKECHAR_NEO_UNION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += CHARACTER_INFO_NEO_UNION().replace('CHARACTER_INFO_NEO_UNION', 'CHARACTER_INFO_NEO_UNION charInfo');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_REFUSE_MAKECHAR() {
  var result = indent + 'PACKET_HC_REFUSE_MAKECHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACCEPT_DELETECHAR() {
  var result = indent + 'PACKET_HC_ACCEPT_DELETECHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_REFUSE_DELETECHAR() {
  var result = indent + 'PACKET_HC_REFUSE_DELETECHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_NOTIFY_ZONESVR() {
  var result = indent + 'PACKET_HC_NOTIFY_ZONESVR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchUint8Arr(16)) + '\n';
  result += ZSERVER_ADDR().replace('ZSERVER_ADDR', 'ZSERVER_ADDR addr');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ENTER() {
  var result = indent + 'PACKET_CZ_ENTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'clientTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACCEPT_ENTER() {
  var result = indent + 'PACKET_ZC_ACCEPT_ENTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REFUSE_ENTER() {
  var result = indent + 'PACKET_ZC_REFUSE_ENTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_INITCHAR() {
  var result = indent + 'PACKET_ZC_NOTIFY_INITCHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Style = ' + reader.fetchInt16() + '\n';
  result += indent + 'Item = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_UPDATECHAR() {
  var result = indent + 'PACKET_ZC_NOTIFY_UPDATECHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Style = ' + reader.fetchInt16() + '\n';
  result += indent + 'Item = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_UPDATEPLAYER() {
  var result = indent + 'PACKET_ZC_NOTIFY_UPDATEPLAYER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Style = ' + reader.fetchInt16() + '\n';
  result += indent + 'Item = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ACTENTRY() {
  var result = indent + 'PACKET_ZC_NOTIFY_ACTENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  result += indent + 'actStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY_NPC() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY_NPC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'shield = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_NOTIFY_ACTORINIT() {
  var result = indent + 'PACKET_CZ_NOTIFY_ACTORINIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_TIME() {
  var result = indent + 'PACKET_CZ_REQUEST_TIME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'clientTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_TIME() {
  var result = indent + 'PACKET_ZC_NOTIFY_TIME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'time = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_VANISH() {
  var result = indent + 'PACKET_ZC_NOTIFY_VANISH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_SC_NOTIFY_BAN() {
  var result = indent + 'PACKET_SC_NOTIFY_BAN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_QUIT() {
  var result = indent + 'PACKET_CZ_REQUEST_QUIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACCEPT_QUIT() {
  var result = indent + 'PACKET_ZC_ACCEPT_QUIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REFUSE_QUIT() {
  var result = indent + 'PACKET_ZC_REFUSE_QUIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_MOVE() {
  var result = indent + 'PACKET_CZ_REQUEST_MOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dest[3] = ' + reader.fetchUint8Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVE() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_PLAYERMOVE() {
  var result = indent + 'PACKET_ZC_NOTIFY_PLAYERMOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STOPMOVE() {
  var result = indent + 'PACKET_ZC_STOPMOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_ACT() {
  var result = indent + 'PACKET_CZ_REQUEST_ACT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ACT() {
  var result = indent + 'PACKET_ZC_NOTIFY_ACT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'attackMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'attackedMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'damage = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  result += indent + 'leftDamage = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ACT_POSITION() {
  var result = indent + 'PACKET_ZC_NOTIFY_ACT_POSITION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'damage = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_CHAT() {
  var result = indent + 'PACKET_CZ_REQUEST_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_CHAT() {
  var result = indent + 'PACKET_ZC_NOTIFY_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_PLAYERCHAT() {
  var result = indent + 'PACKET_ZC_NOTIFY_PLAYERCHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_SERVER_ENTRY_ACK() {
  var result = indent + 'PACKET_SERVER_ENTRY_ACK {\n';
  indent += '\t';
  result += indent + 'Header = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CONTACTNPC() {
  var result = indent + 'PACKET_CZ_CONTACTNPC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NPCACK_MAPMOVE() {
  var result = indent + 'PACKET_ZC_NPCACK_MAPMOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NPCACK_SERVERMOVE() {
  var result = indent + 'PACKET_ZC_NPCACK_SERVERMOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += ZSERVER_ADDR().replace('ZSERVER_ADDR', 'ZSERVER_ADDR addr');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NPCACK_ENABLE() {
  var result = indent + 'PACKET_ZC_NPCACK_ENABLE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQNAME() {
  var result = indent + 'PACKET_CZ_REQNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQNAME() {
  var result = indent + 'PACKET_ZC_ACK_REQNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'CName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_WHISPER() {
  var result = indent + 'PACKET_CZ_WHISPER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'receiverName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_WHISPER() {
  var result = indent + 'PACKET_ZC_WHISPER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'senderName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_WHISPER() {
  var result = indent + 'PACKET_ZC_ACK_WHISPER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_BROADCAST() {
  var result = indent + 'PACKET_CZ_BROADCAST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BROADCAST() {
  var result = indent + 'PACKET_ZC_BROADCAST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_DIRECTION() {
  var result = indent + 'PACKET_CZ_CHANGE_DIRECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'dir = ' + changeToDirection(reader.fetchUint8()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CHANGE_DIRECTION() {
  var result = indent + 'PACKET_ZC_CHANGE_DIRECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'dir = ' + changeToDirection(reader.fetchUint8()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_ENTRY() {
  var result = indent + 'PACKET_ZC_ITEM_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'subX = ' + reader.fetchUint8() + '\n';
  result += indent + 'subY = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_FALL_ENTRY() {
  var result = indent + 'PACKET_ZC_ITEM_FALL_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'subX = ' + reader.fetchUint8() + '\n';
  result += indent + 'subY = ' + reader.fetchUint8() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ITEM_PICKUP() {
  var result = indent + 'PACKET_CZ_ITEM_PICKUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_PICKUP_ACK() {
  var result = indent + 'PACKET_ZC_ITEM_PICKUP_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchUint16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_DISAPPEAR() {
  var result = indent + 'PACKET_ZC_ITEM_DISAPPEAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ITEM_THROW() {
  var result = indent + 'PACKET_CZ_ITEM_THROW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NORMAL_ITEMLIST() {
  var result = indent + 'PACKET_ZC_NORMAL_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO().replace('NORMALITEM_EXTRAINFO', 'NORMALITEM_EXTRAINFO itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPMENT_ITEMLIST() {
  var result = indent + 'PACKET_ZC_EQUIPMENT_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO().replace('EQUIPMENTITEM_EXTRAINFO', 'EQUIPMENTITEM_EXTRAINFO itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_NORMAL_ITEMLIST() {
  var result = indent + 'PACKET_ZC_STORE_NORMAL_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO().replace('NORMALITEM_EXTRAINFO', 'NORMALITEM_EXTRAINFO itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_EQUIPMENT_ITEMLIST() {
  var result = indent + 'PACKET_ZC_STORE_EQUIPMENT_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO().replace('EQUIPMENTITEM_EXTRAINFO', 'EQUIPMENTITEM_EXTRAINFO itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_ITEM() {
  var result = indent + 'PACKET_CZ_USE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_USE_ITEM_ACK() {
  var result = indent + 'PACKET_ZC_USE_ITEM_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_WEAR_EQUIP() {
  var result = indent + 'PACKET_CZ_REQ_WEAR_EQUIP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_WEAR_EQUIP_ACK() {
  var result = indent + 'PACKET_ZC_REQ_WEAR_EQUIP_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint16() + '\n';
  result += indent + 'wItemSpriteNumber = ' + reader.fetchUint16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_TAKEOFF_EQUIP() {
  var result = indent + 'PACKET_CZ_REQ_TAKEOFF_EQUIP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_TAKEOFF_EQUIP_ACK() {
  var result = indent + 'PACKET_ZC_REQ_TAKEOFF_EQUIP_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint16() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_THROW_ACK() {
  var result = indent + 'PACKET_ZC_ITEM_THROW_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PAR_CHANGE() {
  var result = indent + 'PACKET_ZC_PAR_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'varID = ' + appendVarName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_LONGPAR_CHANGE() {
  var result = indent + 'PACKET_ZC_LONGPAR_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'varID = ' + appendVarName(reader.fetchUint16()) + '\n';
  result += indent + 'amount = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RESTART() {
  var result = indent + 'PACKET_CZ_RESTART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_RESTART_ACK() {
  var result = indent + 'PACKET_ZC_RESTART_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SAY_DIALOG() {
  var result = indent + 'PACKET_ZC_SAY_DIALOG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_WAIT_DIALOG() {
  var result = indent + 'PACKET_ZC_WAIT_DIALOG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CLOSE_DIALOG() {
  var result = indent + 'PACKET_ZC_CLOSE_DIALOG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MENU_LIST() {
  var result = indent + 'PACKET_ZC_MENU_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHOOSE_MENU() {
  var result = indent + 'PACKET_CZ_CHOOSE_MENU {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'num = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_NEXT_SCRIPT() {
  var result = indent + 'PACKET_CZ_REQ_NEXT_SCRIPT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_STATUS() {
  var result = indent + 'PACKET_CZ_REQ_STATUS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_STATUS_CHANGE() {
  var result = indent + 'PACKET_CZ_STATUS_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'statusID = ' + reader.fetchUint16() + '\n';
  result += indent + 'changeAmount = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STATUS_CHANGE_ACK() {
  var result = indent + 'PACKET_ZC_STATUS_CHANGE_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'statusID = ' + reader.fetchUint16() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  result += indent + 'value = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STATUS() {
  var result = indent + 'PACKET_ZC_STATUS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'point = ' + reader.fetchInt16() + '\n';
  result += indent + 'str = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardStr = ' + reader.fetchUint8() + '\n';
  result += indent + 'agi = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardAgi = ' + reader.fetchUint8() + '\n';
  result += indent + 'vit = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardVit = ' + reader.fetchUint8() + '\n';
  result += indent + 'Int = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardInt = ' + reader.fetchUint8() + '\n';
  result += indent + 'dex = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardDex = ' + reader.fetchUint8() + '\n';
  result += indent + 'luk = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardLuk = ' + reader.fetchUint8() + '\n';
  result += indent + 'attPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'refiningPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'max_mattPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'min_mattPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'itemdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'mdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusmdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'hitSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'avoidSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusAvoidSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'criticalSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'ASPD = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusASPD = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STATUS_CHANGE() {
  var result = indent + 'PACKET_ZC_STATUS_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'statusID = ' + reader.fetchUint16() + '\n';
  result += indent + 'value = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_EMOTION() {
  var result = indent + 'PACKET_CZ_REQ_EMOTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EMOTION() {
  var result = indent + 'PACKET_ZC_EMOTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_USER_COUNT() {
  var result = indent + 'PACKET_CZ_REQ_USER_COUNT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_USER_COUNT() {
  var result = indent + 'PACKET_ZC_USER_COUNT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SPRITE_CHANGE() {
  var result = indent + 'PACKET_ZC_SPRITE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'value = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SELECT_DEALTYPE() {
  var result = indent + 'PACKET_ZC_SELECT_DEALTYPE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACK_SELECT_DEALTYPE() {
  var result = indent + 'PACKET_CZ_ACK_SELECT_DEALTYPE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_PURCHASE_ITEMLIST() {
  var result = indent + 'PACKET_ZC_PC_PURCHASE_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_ITEM().replace('PURCHASE_ITEM', 'PURCHASE_ITEM itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_SELL_ITEMLIST() {
  var result = indent + 'PACKET_ZC_PC_SELL_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += SELL_ITEM().replace('SELL_ITEM', 'SELL_ITEM itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CZ_PURCHASE_ITEM() {
  var result = indent + 'CZ_PURCHASE_ITEM {\n';
  indent += '\t';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PC_PURCHASE_ITEMLIST() {
  var result = indent + 'PACKET_CZ_PC_PURCHASE_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CZ_PURCHASE_ITEM().replace('CZ_PURCHASE_ITEM', 'CZ_PURCHASE_ITEM itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CZ_SELL_ITEM() {
  var result = indent + 'CZ_SELL_ITEM {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PC_SELL_ITEMLIST() {
  var result = indent + 'PACKET_CZ_PC_SELL_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CZ_SELL_ITEM().replace('CZ_SELL_ITEM', 'CZ_SELL_ITEM itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_PURCHASE_RESULT() {
  var result = indent + 'PACKET_ZC_PC_PURCHASE_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_SELL_RESULT() {
  var result = indent + 'PACKET_ZC_PC_SELL_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_DISCONNECT_CHARACTER() {
  var result = indent + 'PACKET_CZ_DISCONNECT_CHARACTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_DISCONNECT_CHARACTER() {
  var result = indent + 'PACKET_ZC_ACK_DISCONNECT_CHARACTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_DISCONNECT_ALL_CHARACTER() {
  var result = indent + 'PACKET_CZ_DISCONNECT_ALL_CHARACTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SETTING_WHISPER_PC() {
  var result = indent + 'PACKET_CZ_SETTING_WHISPER_PC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SETTING_WHISPER_STATE() {
  var result = indent + 'PACKET_CZ_SETTING_WHISPER_STATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SETTING_WHISPER_PC() {
  var result = indent + 'PACKET_ZC_SETTING_WHISPER_PC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SETTING_WHISPER_STATE() {
  var result = indent + 'PACKET_ZC_SETTING_WHISPER_STATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_WHISPER_LIST() {
  var result = indent + 'PACKET_CZ_REQ_WHISPER_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function WHISPER_ITEM() {
  var result = indent + 'WHISPER_ITEM {\n';
  indent += '\t';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_WHISPER_LIST() {
  var result = indent + 'PACKET_ZC_WHISPER_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += WHISPER_ITEM().replace('WHISPER_ITEM', 'WHISPER_ITEM whisperList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CREATE_CHATROOM() {
  var result = indent + 'PACKET_CZ_CREATE_CHATROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'size = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'passwd[8] = ' + reader.fetchInt8Arr(8) + '\n';
  result += indent + 'title[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_CREATE_CHATROOM() {
  var result = indent + 'PACKET_ZC_ACK_CREATE_CHATROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ROOM_NEWENTRY() {
  var result = indent + 'PACKET_ZC_ROOM_NEWENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'roomID = ' + reader.fetchUint32() + '\n';
  result += indent + 'maxcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'curcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'title[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DESTROY_ROOM() {
  var result = indent + 'PACKET_ZC_DESTROY_ROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'roomID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ENTER_ROOM() {
  var result = indent + 'PACKET_CZ_REQ_ENTER_ROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'roomID = ' + reader.fetchUint32() + '\n';
  result += indent + 'passwd[8] = ' + reader.fetchInt8Arr(8) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REFUSE_ENTER_ROOM() {
  var result = indent + 'PACKET_ZC_REFUSE_ENTER_ROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ROOM_MEMBER() {
  var result = indent + 'ROOM_MEMBER {\n';
  indent += '\t';
  result += indent + 'role = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ENTER_ROOM() {
  var result = indent + 'PACKET_ZC_ENTER_ROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'roomID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ROOM_MEMBER().replace('ROOM_MEMBER', 'ROOM_MEMBER memberList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMBER_NEWENTRY() {
  var result = indent + 'PACKET_ZC_MEMBER_NEWENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'curcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMBER_EXIT() {
  var result = indent + 'PACKET_ZC_MEMBER_EXIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'curcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_CHATROOM() {
  var result = indent + 'PACKET_CZ_CHANGE_CHATROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'size = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'passwd[8] = ' + reader.fetchInt8Arr(8) + '\n';
  result += indent + 'title[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CHANGE_CHATROOM() {
  var result = indent + 'PACKET_ZC_CHANGE_CHATROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'roomID = ' + reader.fetchUint32() + '\n';
  result += indent + 'maxcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'curcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'title[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ROLE_CHANGE() {
  var result = indent + 'PACKET_CZ_REQ_ROLE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'role = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ROLE_CHANGE() {
  var result = indent + 'PACKET_ZC_ROLE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'role = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_EXPEL_MEMBER() {
  var result = indent + 'PACKET_CZ_REQ_EXPEL_MEMBER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_EXIT_ROOM() {
  var result = indent + 'PACKET_CZ_EXIT_ROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_CZ_REQ_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_REQ_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACK_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_CZ_ACK_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ADD_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_CZ_ADD_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_ADD_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ADD_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_ADD_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CONCLUDE_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_CZ_CONCLUDE_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CONCLUDE_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_CONCLUDE_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'who = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CANCEL_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_CZ_CANCEL_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CANCEL_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_CANCEL_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_EXEC_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_CZ_EXEC_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EXEC_EXCHANGE_ITEM() {
  var result = indent + 'PACKET_ZC_EXEC_EXCHANGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EXCHANGEITEM_UNDO() {
  var result = indent + 'PACKET_ZC_EXCHANGEITEM_UNDO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STOREITEM_COUNTINFO() {
  var result = indent + 'PACKET_ZC_NOTIFY_STOREITEM_COUNTINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'curCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxCount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_BODY_TO_STORE() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_BODY_TO_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_ITEM_TO_STORE() {
  var result = indent + 'PACKET_ZC_ADD_ITEM_TO_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_STORE_TO_BODY() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_STORE_TO_BODY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETE_ITEM_FROM_STORE() {
  var result = indent + 'PACKET_ZC_DELETE_ITEM_FROM_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLOSE_STORE() {
  var result = indent + 'PACKET_CZ_CLOSE_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CLOSE_STORE() {
  var result = indent + 'PACKET_ZC_CLOSE_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAKE_GROUP() {
  var result = indent + 'PACKET_CZ_MAKE_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_MAKE_GROUP() {
  var result = indent + 'PACKET_ZC_ACK_MAKE_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function GROUPMEMBER_INFO() {
  var result = indent + 'GROUPMEMBER_INFO {\n';
  indent += '\t';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'role = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GROUP_LIST() {
  var result = indent + 'PACKET_ZC_GROUP_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += GROUPMEMBER_INFO().replace('GROUPMEMBER_INFO', 'GROUPMEMBER_INFO groupInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_JOIN_GROUP() {
  var result = indent + 'PACKET_CZ_REQ_JOIN_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQ_JOIN_GROUP() {
  var result = indent + 'PACKET_ZC_ACK_REQ_JOIN_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'answer = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_JOIN_GROUP() {
  var result = indent + 'PACKET_ZC_REQ_JOIN_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GRID = ' + reader.fetchUint32() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_JOIN_GROUP() {
  var result = indent + 'PACKET_CZ_JOIN_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GRID = ' + reader.fetchUint32() + '\n';
  result += indent + 'answer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_LEAVE_GROUP() {
  var result = indent + 'PACKET_CZ_REQ_LEAVE_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GROUPINFO_CHANGE() {
  var result = indent + 'PACKET_ZC_GROUPINFO_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'expOption = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_GROUPEXPOPTION() {
  var result = indent + 'PACKET_CZ_CHANGE_GROUPEXPOPTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'expOption = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_EXPEL_GROUP_MEMBER() {
  var result = indent + 'PACKET_CZ_REQ_EXPEL_GROUP_MEMBER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_MEMBER_TO_GROUP() {
  var result = indent + 'PACKET_ZC_ADD_MEMBER_TO_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Role = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETE_MEMBER_FROM_GROUP() {
  var result = indent + 'PACKET_ZC_DELETE_MEMBER_FROM_GROUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_HP_TO_GROUPM() {
  var result = indent + 'PACKET_ZC_NOTIFY_HP_TO_GROUPM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'hp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxhp = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_POSITION_TO_GROUPM() {
  var result = indent + 'PACKET_ZC_NOTIFY_POSITION_TO_GROUPM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_CHAT_PARTY() {
  var result = indent + 'PACKET_CZ_REQUEST_CHAT_PARTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_CHAT_PARTY() {
  var result = indent + 'PACKET_ZC_NOTIFY_CHAT_PARTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MVP_GETTING_ITEM() {
  var result = indent + 'PACKET_ZC_MVP_GETTING_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MVP_GETTING_SPECIAL_EXP() {
  var result = indent + 'PACKET_ZC_MVP_GETTING_SPECIAL_EXP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'exp = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MVP() {
  var result = indent + 'PACKET_ZC_MVP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_THROW_MVPITEM() {
  var result = indent + 'PACKET_ZC_THROW_MVPITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILLINFO_UPDATE() {
  var result = indent + 'PACKET_ZC_SKILLINFO_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'spcost = ' + reader.fetchInt16() + '\n';
  result += indent + 'attackRange = ' + reader.fetchInt16() + '\n';
  result += indent + 'upgradable = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILLINFO_LIST() {
  var result = indent + 'PACKET_ZC_SKILLINFO_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += SKILLINFO().replace('SKILLINFO', 'SKILLINFO skillList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_TOUSESKILL() {
  var result = indent + 'PACKET_ZC_ACK_TOUSESKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'NUM = ' + reader.fetchUint32() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  result += indent + 'cause = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_SKILL() {
  var result = indent + 'PACKET_ZC_ADD_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += SKILLINFO().replace('SKILLINFO', 'SKILLINFO data');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_UPGRADE_SKILLLEVEL() {
  var result = indent + 'PACKET_CZ_UPGRADE_SKILLLEVEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_SKILL() {
  var result = indent + 'PACKET_CZ_USE_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_SKILL() {
  var result = indent + 'PACKET_ZC_NOTIFY_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'attackMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'attackedMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'damage = ' + reader.fetchInt16() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_SKILL_POSITION() {
  var result = indent + 'PACKET_ZC_NOTIFY_SKILL_POSITION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'attackMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'attackedMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'damage = ' + reader.fetchInt16() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_SKILL_TOGROUND() {
  var result = indent + 'PACKET_CZ_USE_SKILL_TOGROUND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_GROUNDSKILL() {
  var result = indent + 'PACKET_ZC_NOTIFY_GROUNDSKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CANCEL_LOCKON() {
  var result = indent + 'PACKET_CZ_CANCEL_LOCKON {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STATE_CHANGE() {
  var result = indent + 'PACKET_ZC_STATE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_USE_SKILL() {
  var result = indent + 'PACKET_ZC_USE_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'srcAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SELECT_WARPPOINT() {
  var result = indent + 'PACKET_CZ_SELECT_WARPPOINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_WARPLIST() {
  var result = indent + 'PACKET_ZC_WARPLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  for (var i = 0; i < 4; i++) {
    result += indent + 'mapName[' + i + '][16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REMEMBER_WARPPOINT() {
  var result = indent + 'PACKET_CZ_REMEMBER_WARPPOINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REMEMBER_WARPPOINT() {
  var result = indent + 'PACKET_ZC_ACK_REMEMBER_WARPPOINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_ENTRY() {
  var result = indent + 'PACKET_ZC_SKILL_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'creatorAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchUint8()) + '\n';
  result += indent + 'isVisible = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_DISAPPEAR() {
  var result = indent + 'PACKET_ZC_SKILL_DISAPPEAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_CARTITEM_COUNTINFO() {
  var result = indent + 'PACKET_ZC_NOTIFY_CARTITEM_COUNTINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'curCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'curWeight = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxWeight = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_EQUIPMENT_ITEMLIST() {
  var result = indent + 'PACKET_ZC_CART_EQUIPMENT_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO().replace('EQUIPMENTITEM_EXTRAINFO', 'EQUIPMENTITEM_EXTRAINFO itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_NORMAL_ITEMLIST() {
  var result = indent + 'PACKET_ZC_CART_NORMAL_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO().replace('NORMALITEM_EXTRAINFO', 'NORMALITEM_EXTRAINFO itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_ITEM_TO_CART() {
  var result = indent + 'PACKET_ZC_ADD_ITEM_TO_CART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETE_ITEM_FROM_CART() {
  var result = indent + 'PACKET_ZC_DELETE_ITEM_FROM_CART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_BODY_TO_CART() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_BODY_TO_CART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_CART_TO_BODY() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_CART_TO_BODY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_STORE_TO_CART() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_STORE_TO_CART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_CART_TO_STORE() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_CART_TO_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CARTOFF() {
  var result = indent + 'PACKET_CZ_REQ_CARTOFF {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CARTOFF() {
  var result = indent + 'PACKET_ZC_CARTOFF {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ADDITEM_TO_CART() {
  var result = indent + 'PACKET_ZC_ACK_ADDITEM_TO_CART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OPENSTORE() {
  var result = indent + 'PACKET_ZC_OPENSTORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'itemcount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CLOSESTORE() {
  var result = indent + 'PACKET_CZ_REQ_CLOSESTORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_OPENSTORE() {
  var result = indent + 'PACKET_CZ_REQ_OPENSTORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'storeName[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BUY_FROMMC() {
  var result = indent + 'PACKET_CZ_REQ_BUY_FROMMC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_ENTRY() {
  var result = indent + 'PACKET_ZC_STORE_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'storeName[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DISAPPEAR_ENTRY() {
  var result = indent + 'PACKET_ZC_DISAPPEAR_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_PURCHASE_ITEMLIST_FROMMC() {
  var result = indent + 'PACKET_ZC_PC_PURCHASE_ITEMLIST_FROMMC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_ITEM_FROMMC().replace('PURCHASE_ITEM_FROMMC', 'PURCHASE_ITEM_FROMMC itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CZ_PURCHASE_ITEM_FROMMC() {
  var result = indent + 'CZ_PURCHASE_ITEM_FROMMC {\n';
  indent += '\t';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PC_PURCHASE_ITEMLIST_FROMMC() {
  var result = indent + 'PACKET_CZ_PC_PURCHASE_ITEMLIST_FROMMC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CZ_PURCHASE_ITEM_FROMMC().replace('CZ_PURCHASE_ITEM_FROMMC', 'CZ_PURCHASE_ITEM_FROMMC itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_PURCHASE_RESULT_FROMMC() {
  var result = indent + 'PACKET_ZC_PC_PURCHASE_RESULT_FROMMC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'curcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PURCHASE_MYITEM() {
  var result = indent + 'PURCHASE_MYITEM {\n';
  indent += '\t';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchUint8() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_PURCHASE_MYITEMLIST() {
  var result = indent + 'PACKET_ZC_PC_PURCHASE_MYITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_MYITEM().replace('PURCHASE_MYITEM', 'PURCHASE_MYITEM itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETEITEM_FROM_MCSTORE() {
  var result = indent + 'PACKET_ZC_DELETEITEM_FROM_MCSTORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PKMODE_CHANGE() {
  var result = indent + 'PACKET_CZ_PKMODE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'isTurnOn = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ATTACK_FAILURE_FOR_DISTANCE() {
  var result = indent + 'PACKET_ZC_ATTACK_FAILURE_FOR_DISTANCE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetXPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetYPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'currentAttRange = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ATTACK_RANGE() {
  var result = indent + 'PACKET_ZC_ATTACK_RANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'currentAttRange = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACTION_FAILURE() {
  var result = indent + 'PACKET_ZC_ACTION_FAILURE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIP_ARROW() {
  var result = indent + 'PACKET_ZC_EQUIP_ARROW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_RECOVERY() {
  var result = indent + 'PACKET_ZC_RECOVERY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'varID = ' + appendVarName(reader.fetchInt16()) + '\n';
  result += indent + 'amount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_USESKILL_ACK() {
  var result = indent + 'PACKET_ZC_USESKILL_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'property = ' + reader.fetchUint32() + '\n';
  result += indent + 'delayTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ITEM_CREATE() {
  var result = indent + 'PACKET_CZ_ITEM_CREATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'itemName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVETO_MAP() {
  var result = indent + 'PACKET_CZ_MOVETO_MAP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_COUPLESTATUS() {
  var result = indent + 'PACKET_ZC_COUPLESTATUS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'statusType = ' + reader.fetchUint32() + '\n';
  result += indent + 'defaultStatus = ' + reader.fetchInt32() + '\n';
  result += indent + 'plusStatus = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OPEN_EDITDLG() {
  var result = indent + 'PACKET_ZC_OPEN_EDITDLG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_INPUT_EDITDLG() {
  var result = indent + 'PACKET_CZ_INPUT_EDITDLG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_COMPASS() {
  var result = indent + 'PACKET_ZC_COMPASS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchInt32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt32() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt32() + '\n';
  result += indent + 'id = ' + reader.fetchUint8() + '\n';
  result += indent + 'color = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SHOW_IMAGE() {
  var result = indent + 'PACKET_ZC_SHOW_IMAGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'imageName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLOSE_DIALOG() {
  var result = indent + 'PACKET_CZ_CLOSE_DIALOG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AUTORUN_SKILL() {
  var result = indent + 'PACKET_ZC_AUTORUN_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += SKILLINFO().replace('SKILLINFO', 'SKILLINFO data');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_RESURRECTION() {
  var result = indent + 'PACKET_ZC_RESURRECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GIVE_MANNER_POINT() {
  var result = indent + 'PACKET_CZ_REQ_GIVE_MANNER_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'otherAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'point = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_GIVE_MANNER_POINT() {
  var result = indent + 'PACKET_ZC_ACK_GIVE_MANNER_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MANNER_POINT_GIVEN() {
  var result = indent + 'PACKET_ZC_NOTIFY_MANNER_POINT_GIVEN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'otherCharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function RELATED_GUILD() {
  var result = indent + 'RELATED_GUILD {\n';
  indent += '\t';
  result += indent + 'GDID = ' + reader.fetchInt32() + '\n';
  result += indent + 'relation = ' + reader.fetchInt32() + '\n';
  result += indent + 'GuildName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MYGUILD_BASIC_INFO() {
  var result = indent + 'PACKET_ZC_MYGUILD_BASIC_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += RELATED_GUILD().replace('RELATED_GUILD', 'RELATED_GUILD relatedGuildList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GUILD_MENUINTERFACE() {
  var result = indent + 'PACKET_CZ_REQ_GUILD_MENUINTERFACE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_GUILD_MENUINTERFACE() {
  var result = indent + 'PACKET_ZC_ACK_GUILD_MENUINTERFACE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'guildMemuFlag = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GUILD_MENU() {
  var result = indent + 'PACKET_CZ_REQ_GUILD_MENU {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_INFO() {
  var result = indent + 'PACKET_ZC_GUILD_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchInt32() + '\n';
  result += indent + 'level = ' + reader.fetchInt32() + '\n';
  result += indent + 'userNum = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxUserNum = ' + reader.fetchInt32() + '\n';
  result += indent + 'userAverageLevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxExp = ' + reader.fetchInt32() + '\n';
  result += indent + 'point = ' + reader.fetchInt32() + '\n';
  result += indent + 'honor = ' + reader.fetchInt32() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'emblemVersion = ' + reader.fetchInt32() + '\n';
  result += indent + 'guildname[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'masterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'manageLand[16] = ' + reader.fetchInt8Arr(16) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GUILD_EMBLEM_IMG() {
  var result = indent + 'PACKET_CZ_REQ_GUILD_EMBLEM_IMG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_EMBLEM_IMG() {
  var result = indent + 'PACKET_ZC_GUILD_EMBLEM_IMG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchInt32() + '\n';
  result += indent + 'emblemVersion = ' + reader.fetchInt32() + '\n';
  result += indent + 'img[] = ' + reader.fetchUint8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REGISTER_GUILD_EMBLEM_IMG() {
  var result = indent + 'PACKET_CZ_REGISTER_GUILD_EMBLEM_IMG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'img[] = ' + reader.fetchUint8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function GUILD_MEMBERMGR_INFO() {
  var result = indent + 'GUILD_MEMBERMGR_INFO {\n';
  indent += '\t';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'HeadType = ' + reader.fetchInt16() + '\n';
  result += indent + 'HeadPalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'Sex = ' + reader.fetchInt16() + '\n';
  result += indent + 'Job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'Level = ' + reader.fetchInt16() + '\n';
  result += indent + 'MemberExp = ' + reader.fetchInt32() + '\n';
  result += indent + 'CurrentState = ' + reader.fetchInt32() + '\n';
  result += indent + 'GPositionID = ' + reader.fetchInt32() + '\n';
  result += indent + 'Memo[50] = ' + reader.fetchInt8Arr(50) + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMBERMGR_INFO() {
  var result = indent + 'PACKET_ZC_MEMBERMGR_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += GUILD_MEMBERMGR_INFO().replace('GUILD_MEMBERMGR_INFO', 'GUILD_MEMBERMGR_INFO memberInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CHANGE_MEMBERPOS() {
  var result = indent + 'PACKET_CZ_REQ_CHANGE_MEMBERPOS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MEMBER_POSITION_INFO().replace('MEMBER_POSITION_INFO', 'MEMBER_POSITION_INFO memberInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQ_CHANGE_MEMBERS() {
  var result = indent + 'PACKET_ZC_ACK_REQ_CHANGE_MEMBERS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MEMBER_POSITION_INFO().replace('MEMBER_POSITION_INFO', 'MEMBER_POSITION_INFO memberInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_OPEN_MEMBER_INFO() {
  var result = indent + 'PACKET_CZ_REQ_OPEN_MEMBER_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_OPEN_MEMBER_INFO() {
  var result = indent + 'PACKET_ZC_ACK_OPEN_MEMBER_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_LEAVE_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_LEAVE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'reasonDesc[40] = ' + changeToString(reader.fetchInt8Arr(40)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_LEAVE_GUILD() {
  var result = indent + 'PACKET_ZC_ACK_LEAVE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'charName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'reasonDesc[40] = ' + changeToString(reader.fetchInt8Arr(40)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BAN_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_BAN_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'reasonDesc[40] = ' + changeToString(reader.fetchInt8Arr(40)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_BAN_GUILD() {
  var result = indent + 'PACKET_ZC_ACK_BAN_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'charName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'reasonDesc[40] = ' + changeToString(reader.fetchInt8Arr(40)) + '\n';
  result += indent + 'userName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_DISORGANIZE_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_DISORGANIZE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'key[40] = ' + reader.fetchInt8Arr(40) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_DISORGANIZE_GUILD_RESULT() {
  var result = indent + 'PACKET_ZC_ACK_DISORGANIZE_GUILD_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'reason = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_DISORGANIZE_GUILD() {
  var result = indent + 'PACKET_ZC_ACK_DISORGANIZE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'reasonDesc[40] = ' + changeToString(reader.fetchInt8Arr(40)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_POSITION_INFO() {
  var result = indent + 'PACKET_ZC_POSITION_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += GUILD_MEMBER_POSITION_INFO().replace('GUILD_MEMBER_POSITION_INFO', 'GUILD_MEMBER_POSITION_INFO memberInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REG_CHANGE_GUILD_POSITIONINFO() {
  var result = indent + 'PACKET_CZ_REG_CHANGE_GUILD_POSITIONINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += GUILD_REG_POSITION_INFO().replace('GUILD_REG_POSITION_INFO', 'GUILD_REG_POSITION_INFO memberList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_SKILLINFO() {
  var result = indent + 'PACKET_ZC_GUILD_SKILLINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'skillPoint = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += SKILLINFO().replace('SKILLINFO', 'SKILLINFO skillList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function GUILD_BAN_INFO() {
  var result = indent + 'GUILD_BAN_INFO {\n';
  indent += '\t';
  result += indent + 'charname[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'username[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'reason[40] = ' + reader.fetchInt8Arr(40) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BAN_LIST() {
  var result = indent + 'PACKET_ZC_BAN_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += GUILD_BAN_INFO().replace('GUILD_BAN_INFO', 'GUILD_BAN_INFO banList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function OTHER_GUILD_INFO() {
  var result = indent + 'OTHER_GUILD_INFO {\n';
  indent += '\t';
  result += indent + 'guildname[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'guildLevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'guildMemberSize = ' + reader.fetchInt32() + '\n';
  result += indent + 'guildRanking = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OTHER_GUILD_LIST() {
  var result = indent + 'PACKET_ZC_OTHER_GUILD_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += OTHER_GUILD_INFO().replace('OTHER_GUILD_INFO', 'OTHER_GUILD_INFO guildList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_MAKE_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_MAKE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function MEMBER_POSITION_ID_NAME_INFO() {
  var result = indent + 'MEMBER_POSITION_ID_NAME_INFO {\n';
  indent += '\t';
  result += indent + 'positionID = ' + reader.fetchInt32() + '\n';
  result += indent + 'posName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_POSITION_ID_NAME_INFO() {
  var result = indent + 'PACKET_ZC_POSITION_ID_NAME_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MEMBER_POSITION_ID_NAME_INFO().replace('MEMBER_POSITION_ID_NAME_INFO', 'MEMBER_POSITION_ID_NAME_INFO memberList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_RESULT_MAKE_GUILD() {
  var result = indent + 'PACKET_ZC_RESULT_MAKE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_JOIN_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_JOIN_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'MyAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'MyGID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQ_JOIN_GUILD() {
  var result = indent + 'PACKET_ZC_ACK_REQ_JOIN_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'answer = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_JOIN_GUILD() {
  var result = indent + 'PACKET_ZC_REQ_JOIN_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'guildName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_JOIN_GUILD() {
  var result = indent + 'PACKET_CZ_JOIN_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'answer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_GDID() {
  var result = indent + 'PACKET_ZC_UPDATE_GDID {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'emblemVersion = ' + reader.fetchInt32() + '\n';
  result += indent + 'right = ' + reader.fetchInt32() + '\n';
  result += indent + 'isMaster = ' + reader.fetchBool() + '\n';
  result += indent + 'InterSID = ' + reader.fetchInt32() + '\n';
  result += indent + 'GName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_CHARSTAT() {
  var result = indent + 'PACKET_ZC_UPDATE_CHARSTAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'status = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GUILD_NOTICE() {
  var result = indent + 'PACKET_CZ_GUILD_NOTICE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'subject[60] = ' + reader.fetchInt8Arr(60) + '\n';
  result += indent + 'notice[120] = ' + reader.fetchInt8Arr(120) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_NOTICE() {
  var result = indent + 'PACKET_ZC_GUILD_NOTICE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'subject[60] = ' + reader.fetchInt8Arr(60) + '\n';
  result += indent + 'notice[120] = ' + reader.fetchInt8Arr(120) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ALLY_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_ALLY_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'MyAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'MyGID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_ALLY_GUILD() {
  var result = indent + 'PACKET_ZC_REQ_ALLY_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'otherAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'guildName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ALLY_GUILD() {
  var result = indent + 'PACKET_CZ_ALLY_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'otherAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'answer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQ_ALLY_GUILD() {
  var result = indent + 'PACKET_ZC_ACK_REQ_ALLY_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'answer = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_CHANGE_GUILD_POSITIONINFO() {
  var result = indent + 'PACKET_ZC_ACK_CHANGE_GUILD_POSITIONINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += GUILD_REG_POSITION_INFO().replace('GUILD_REG_POSITION_INFO', 'GUILD_REG_POSITION_INFO memberList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GUILD_MEMBER_INFO() {
  var result = indent + 'PACKET_CZ_REQ_GUILD_MEMBER_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_GUILD_MEMBER_INFO() {
  var result = indent + 'PACKET_ZC_ACK_GUILD_MEMBER_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += GUILD_MEMBER_INFO().replace('GUILD_MEMBER_INFO', 'GUILD_MEMBER_INFO Info');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEMIDENTIFY_LIST() {
  var result = indent + 'PACKET_ZC_ITEMIDENTIFY_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITIDList[] = ' + reader.fetchUint16Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ITEMIDENTIFY() {
  var result = indent + 'PACKET_CZ_REQ_ITEMIDENTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ITEMIDENTIFY() {
  var result = indent + 'PACKET_ZC_ACK_ITEMIDENTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ITEMCOMPOSITION_LIST() {
  var result = indent + 'PACKET_CZ_REQ_ITEMCOMPOSITION_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'cardIndex = ' + appendItemName(reader.fetchInt16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEMCOMPOSITION_LIST() {
  var result = indent + 'PACKET_ZC_ITEMCOMPOSITION_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITIDList[] = ' + reader.fetchUint16Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ITEMCOMPOSITION() {
  var result = indent + 'PACKET_CZ_REQ_ITEMCOMPOSITION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'cardIndex = ' + appendItemName(reader.fetchInt16()) + '\n';
  result += indent + 'equipIndex = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ITEMCOMPOSITION() {
  var result = indent + 'PACKET_ZC_ACK_ITEMCOMPOSITION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'equipIndex = ' + reader.fetchInt16() + '\n';
  result += indent + 'cardIndex = ' + appendItemName(reader.fetchInt16()) + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GUILD_CHAT() {
  var result = indent + 'PACKET_CZ_GUILD_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_CHAT() {
  var result = indent + 'PACKET_ZC_GUILD_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_HOSTILE_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_HOSTILE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQ_HOSTILE_GUILD() {
  var result = indent + 'PACKET_ZC_ACK_REQ_HOSTILE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMBER_ADD() {
  var result = indent + 'PACKET_ZC_MEMBER_ADD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += GUILD_MEMBER_INFO().replace('GUILD_MEMBER_INFO', 'GUILD_MEMBER_INFO Info');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_DELETE_RELATED_GUILD() {
  var result = indent + 'PACKET_CZ_REQ_DELETE_RELATED_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'OpponentGDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Relation = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETE_RELATED_GUILD() {
  var result = indent + 'PACKET_ZC_DELETE_RELATED_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'OpponentGDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Relation = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function RELATED_GUILD_INFO() {
  var result = indent + 'RELATED_GUILD_INFO {\n';
  indent += '\t';
  result += indent + 'relation = ' + reader.fetchInt32() + '\n';
  result += indent + 'GDID = ' + reader.fetchInt32() + '\n';
  result += indent + 'guildname[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_RELATED_GUILD() {
  var result = indent + 'PACKET_ZC_ADD_RELATED_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += RELATED_GUILD_INFO().replace('RELATED_GUILD_INFO', 'RELATED_GUILD_INFO Info');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_COLLECTORDEAD() {
  var result = indent + 'PACKET_COLLECTORDEAD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ServerID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_PING() {
  var result = indent + 'PACKET_PING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ITEMREFINING() {
  var result = indent + 'PACKET_ZC_ACK_ITEMREFINING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchInt16() + '\n';
  result += indent + 'itemIndex = ' + reader.fetchInt16() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MAPINFO() {
  var result = indent + 'PACKET_ZC_NOTIFY_MAPINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_DISCONNECT() {
  var result = indent + 'PACKET_CZ_REQ_DISCONNECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQ_DISCONNECT() {
  var result = indent + 'PACKET_ZC_ACK_REQ_DISCONNECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ZC_MONSTER_INFO() {
  var result = indent + 'ZC_MONSTER_INFO {\n';
  indent += '\t';
  result += indent + 'water = ' + reader.fetchUint8() + '\n';
  result += indent + 'earth = ' + reader.fetchUint8() + '\n';
  result += indent + 'fire = ' + reader.fetchUint8() + '\n';
  result += indent + 'wind = ' + reader.fetchUint8() + '\n';
  result += indent + 'poison = ' + reader.fetchUint8() + '\n';
  result += indent + 'saint = ' + reader.fetchUint8() + '\n';
  result += indent + 'dark = ' + reader.fetchUint8() + '\n';
  result += indent + 'mental = ' + reader.fetchUint8() + '\n';
  result += indent + 'undead = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MONSTER_INFO() {
  var result = indent + 'PACKET_ZC_MONSTER_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'size = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'def = ' + reader.fetchInt16() + '\n';
  result += indent + 'raceType = ' + reader.fetchInt16() + '\n';
  result += indent + 'mdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'property = ' + reader.fetchInt16() + '\n';
  result += ZC_MONSTER_INFO().replace('ZC_MONSTER_INFO', 'ZC_MONSTER_INFO propertyTable');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAKABLEITEMLIST() {
  var result = indent + 'PACKET_ZC_MAKABLEITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MAKABLEITEM_INFO().replace('MAKABLEITEM_INFO', 'MAKABLEITEM_INFO info[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQMAKINGITEM() {
  var result = indent + 'PACKET_CZ_REQMAKINGITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += MAKABLEITEM_INFO().replace('MAKABLEITEM_INFO', 'MAKABLEITEM_INFO info');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQMAKINGITEM() {
  var result = indent + 'PACKET_ZC_ACK_REQMAKINGITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_SKILL_TOGROUND_WITHTALKBOX() {
  var result = indent + 'PACKET_CZ_USE_SKILL_TOGROUND_WITHTALKBOX {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'contents[80] = ' + reader.fetchInt8Arr(80) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_TALKBOX_CHATCONTENTS() {
  var result = indent + 'PACKET_ZC_TALKBOX_CHATCONTENTS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'contents[80] = ' + reader.fetchInt8Arr(80) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_MAPINFO() {
  var result = indent + 'PACKET_ZC_UPDATE_MAPINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQNAME_BYGID() {
  var result = indent + 'PACKET_CZ_REQNAME_BYGID {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQNAME_BYGID() {
  var result = indent + 'PACKET_ZC_ACK_REQNAME_BYGID {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'CName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REQNAMEALL() {
  var result = indent + 'PACKET_ZC_ACK_REQNAMEALL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'CName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'PName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'GName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'RName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MSG_STATE_CHANGE() {
  var result = indent + 'PACKET_ZC_MSG_STATE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'state = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RESET() {
  var result = indent + 'PACKET_CZ_RESET {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_MAPTYPE() {
  var result = indent + 'PACKET_CZ_CHANGE_MAPTYPE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MAPPROPERTY() {
  var result = indent + 'PACKET_ZC_NOTIFY_MAPPROPERTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_RANKING() {
  var result = indent + 'PACKET_ZC_NOTIFY_RANKING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ranking = ' + reader.fetchInt32() + '\n';
  result += indent + 'total = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_EFFECT() {
  var result = indent + 'PACKET_ZC_NOTIFY_EFFECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'effectID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_EFFECTSTATE() {
  var result = indent + 'PACKET_CZ_CHANGE_EFFECTSTATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EffectState = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_START_CAPTURE() {
  var result = indent + 'PACKET_ZC_START_CAPTURE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_TRYCAPTURE_MONSTER() {
  var result = indent + 'PACKET_CZ_TRYCAPTURE_MONSTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_TRYCAPTURE_MONSTER() {
  var result = indent + 'PACKET_ZC_TRYCAPTURE_MONSTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_COMMAND_PET() {
  var result = indent + 'PACKET_CZ_COMMAND_PET {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'cSub = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PROPERTY_PET() {
  var result = indent + 'PACKET_ZC_PROPERTY_PET {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'szName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'bModified = ' + reader.fetchUint8() + '\n';
  result += indent + 'nLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'nFullness = ' + reader.fetchInt16() + '\n';
  result += indent + 'nRelationship = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FEED_PET() {
  var result = indent + 'PACKET_ZC_FEED_PET {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'cRet = ' + reader.fetchInt8() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CHANGESTATE_PET() {
  var result = indent + 'PACKET_ZC_CHANGESTATE_PET {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt8() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'data = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RENAME_PET() {
  var result = indent + 'PACKET_CZ_RENAME_PET {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'szName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PETEGGITEM_INFO() {
  var result = indent + 'PETEGGITEM_INFO {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PETEGG_LIST() {
  var result = indent + 'PACKET_ZC_PETEGG_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PETEGGITEM_INFO().replace('PETEGGITEM_INFO', 'PETEGGITEM_INFO eggList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SELECT_PETEGG() {
  var result = indent + 'PACKET_CZ_SELECT_PETEGG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PETEGG_INFO() {
  var result = indent + 'PACKET_CZ_PETEGG_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PET_ACT() {
  var result = indent + 'PACKET_CZ_PET_ACT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'data = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PET_ACT() {
  var result = indent + 'PACKET_ZC_PET_ACT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'data = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PAR_CHANGE_USER() {
  var result = indent + 'PACKET_ZC_PAR_CHANGE_USER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'varID = ' + appendVarName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_UPDATE() {
  var result = indent + 'PACKET_ZC_SKILL_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ARROWITEM_INFO() {
  var result = indent + 'ARROWITEM_INFO {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAKINGARROW_LIST() {
  var result = indent + 'PACKET_ZC_MAKINGARROW_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ARROWITEM_INFO().replace('ARROWITEM_INFO', 'ARROWITEM_INFO arrowList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_MAKINGARROW() {
  var result = indent + 'PACKET_CZ_REQ_MAKINGARROW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'id = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CHANGECART() {
  var result = indent + 'PACKET_CZ_REQ_CHANGECART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'num = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NPCSPRITE_CHANGE() {
  var result = indent + 'PACKET_ZC_NPCSPRITE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'value = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SHOWDIGIT() {
  var result = indent + 'PACKET_ZC_SHOWDIGIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_OPENSTORE2() {
  var result = indent + 'PACKET_CZ_REQ_OPENSTORE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'storeName[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += STORE_ITEM().replace('STORE_ITEM', 'STORE_ITEM storeList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SHOW_IMAGE2() {
  var result = indent + 'PACKET_ZC_SHOW_IMAGE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'imageName[64] = ' + changeToString(reader.fetchInt8Arr(64)) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CHANGE_GUILD() {
  var result = indent + 'PACKET_ZC_CHANGE_GUILD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'emblemVersion = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_SC_BILLING_INFO() {
  var result = indent + 'PACKET_SC_BILLING_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwAmountRemain = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwQuantityRemain = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwReserved1 = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwReserved2 = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_INFO2() {
  var result = indent + 'PACKET_ZC_GUILD_INFO2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchInt32() + '\n';
  result += indent + 'level = ' + reader.fetchInt32() + '\n';
  result += indent + 'userNum = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxUserNum = ' + reader.fetchInt32() + '\n';
  result += indent + 'userAverageLevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxExp = ' + reader.fetchInt32() + '\n';
  result += indent + 'point = ' + reader.fetchInt32() + '\n';
  result += indent + 'honor = ' + reader.fetchInt32() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'emblemVersion = ' + reader.fetchInt32() + '\n';
  result += indent + 'guildname[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'masterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'manageLand[16] = ' + reader.fetchInt8Arr(16) + '\n';
  result += indent + 'zeny = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GUILD_ZENY() {
  var result = indent + 'PACKET_CZ_GUILD_ZENY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'zeny = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_ZENY_ACK() {
  var result = indent + 'PACKET_ZC_GUILD_ZENY_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ret = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DISPEL() {
  var result = indent + 'PACKET_ZC_DISPEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REMOVE_AID() {
  var result = indent + 'PACKET_CZ_REMOVE_AID {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AccountName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SHIFT() {
  var result = indent + 'PACKET_CZ_SHIFT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharacterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RECALL() {
  var result = indent + 'PACKET_CZ_RECALL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AccountName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RECALL_GID() {
  var result = indent + 'PACKET_CZ_RECALL_GID {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharacterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ASK_PNGAMEROOM() {
  var result = indent + 'PACKET_AC_ASK_PNGAMEROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_REPLY_PNGAMEROOM() {
  var result = indent + 'PACKET_CA_REPLY_PNGAMEROOM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Permission = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_REMAINTIME() {
  var result = indent + 'PACKET_CZ_REQ_REMAINTIME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REPLY_REMAINTIME() {
  var result = indent + 'PACKET_ZC_REPLY_REMAINTIME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt32() + '\n';
  result += indent + 'ExpirationDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'RemainTime = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_INFO_REMAINTIME() {
  var result = indent + 'PACKET_ZC_INFO_REMAINTIME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  result += indent + 'RemainTime = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BROADCAST2() {
  var result = indent + 'PACKET_ZC_BROADCAST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'fontColor = ' + reader.fetchUint32() + '\n';
  result += indent + 'fontType = ' + reader.fetchInt16() + '\n';
  result += indent + 'fontSize = ' + reader.fetchInt16() + '\n';
  result += indent + 'fontAlign = ' + reader.fetchInt16() + '\n';
  result += indent + 'fontY = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_ITEM_TO_STORE2() {
  var result = indent + 'PACKET_ZC_ADD_ITEM_TO_STORE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_ITEM_TO_CART2() {
  var result = indent + 'PACKET_ZC_ADD_ITEM_TO_CART2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CS_REQ_ENCRYPTION() {
  var result = indent + 'PACKET_CS_REQ_ENCRYPTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'encCount = ' + reader.fetchInt8() + '\n';
  result += indent + 'decCount = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_SC_ACK_ENCRYPTION() {
  var result = indent + 'PACKET_SC_ACK_ENCRYPTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_USE_ITEM_ACK2() {
  var result = indent + 'PACKET_ZC_USE_ITEM_ACK2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'id = ' + reader.fetchUint16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_ENTRY2() {
  var result = indent + 'PACKET_ZC_SKILL_ENTRY2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'creatorAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchUint8()) + '\n';
  result += indent + 'isVisible = ' + reader.fetchBool() + '\n';
  result += indent + 'isContens = ' + reader.fetchBool() + '\n';
  result += indent + 'msg[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQMAKINGHOMUN() {
  var result = indent + 'PACKET_CZ_REQMAKINGHOMUN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MONSTER_TALK() {
  var result = indent + 'PACKET_CZ_MONSTER_TALK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'stateId = ' + reader.fetchUint8() + '\n';
  result += indent + 'skillId = ' + reader.fetchUint8() + '\n';
  result += indent + 'arg1 = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MONSTER_TALK() {
  var result = indent + 'PACKET_ZC_MONSTER_TALK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'stateId = ' + reader.fetchUint8() + '\n';
  result += indent + 'skillId = ' + reader.fetchUint8() + '\n';
  result += indent + 'arg1 = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AUTOSPELLLIST() {
  var result = indent + 'PACKET_ZC_AUTOSPELLLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID[7] = ' + appendSkillName(reader.fetchInt32Arr(7)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SELECTAUTOSPELL() {
  var result = indent + 'PACKET_CZ_SELECTAUTOSPELL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchInt32()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DEVOTIONLIST() {
  var result = indent + 'PACKET_ZC_DEVOTIONLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'myAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AID[5] = ' + reader.fetchUint32Arr(5) + '\n';
  result += indent + 'range = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SPIRITS() {
  var result = indent + 'PACKET_ZC_SPIRITS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'num = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BLADESTOP() {
  var result = indent + 'PACKET_ZC_BLADESTOP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'srcAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'destAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'flag = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_COMBODELAY() {
  var result = indent + 'PACKET_ZC_COMBODELAY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'delayTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SOUND() {
  var result = indent + 'PACKET_ZC_SOUND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'fileName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'act = ' + reader.fetchUint8() + '\n';
  result += indent + 'term = ' + reader.fetchUint32() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OPEN_EDITDLGSTR() {
  var result = indent + 'PACKET_ZC_OPEN_EDITDLGSTR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_INPUT_EDITDLGSTR() {
  var result = indent + 'PACKET_CZ_INPUT_EDITDLGSTR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MAPPROPERTY2() {
  var result = indent + 'PACKET_ZC_NOTIFY_MAPPROPERTY2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SPRITE_CHANGE2() {
  var result = indent + 'PACKET_ZC_SPRITE_CHANGE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY2() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY2() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY2() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt16() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_REQ_HASH() {
  var result = indent + 'PACKET_CA_REQ_HASH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_HASH() {
  var result = indent + 'PACKET_AC_ACK_HASH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'secret[] = ' + reader.fetchUint8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN2() {
  var result = indent + 'PACKET_CA_LOGIN2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'PasswdMD5[16] = ' + reader.fetchUint8Arr(16) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_SKILL2() {
  var result = indent + 'PACKET_ZC_NOTIFY_SKILL2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'attackMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'attackedMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'damage = ' + reader.fetchInt32() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ACCOUNTNAME() {
  var result = indent + 'PACKET_CZ_REQ_ACCOUNTNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ACCOUNTNAME() {
  var result = indent + 'PACKET_ZC_ACK_ACCOUNTNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SPIRITS2() {
  var result = indent + 'PACKET_ZC_SPIRITS2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'num = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_COUPLE() {
  var result = indent + 'PACKET_ZC_REQ_COUPLE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_JOIN_COUPLE() {
  var result = indent + 'PACKET_CZ_JOIN_COUPLE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'answer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_START_COUPLE() {
  var result = indent + 'PACKET_ZC_START_COUPLE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_JOIN_COUPLE() {
  var result = indent + 'PACKET_CZ_REQ_JOIN_COUPLE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_COUPLENAME() {
  var result = indent + 'PACKET_ZC_COUPLENAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CoupleName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_DORIDORI() {
  var result = indent + 'PACKET_CZ_DORIDORI {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAKE_GROUP2() {
  var result = indent + 'PACKET_CZ_MAKE_GROUP2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'ItemPickupRule = ' + reader.fetchUint8() + '\n';
  result += indent + 'ItemDivisionRule = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_MEMBER_TO_GROUP2() {
  var result = indent + 'PACKET_ZC_ADD_MEMBER_TO_GROUP2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Role = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'ItemPickupRule = ' + reader.fetchUint8() + '\n';
  result += indent + 'ItemDivisionRule = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CONGRATULATION() {
  var result = indent + 'PACKET_ZC_CONGRATULATION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_POSITION_TO_GUILDM() {
  var result = indent + 'PACKET_ZC_NOTIFY_POSITION_TO_GUILDM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GUILD_MEMBER_MAP_CHANGE() {
  var result = indent + 'PACKET_ZC_GUILD_MEMBER_MAP_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GDID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHOPOKGI() {
  var result = indent + 'PACKET_CZ_CHOPOKGI {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NORMAL_ITEMLIST2() {
  var result = indent + 'PACKET_ZC_NORMAL_ITEMLIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO2().replace('NORMALITEM_EXTRAINFO2', 'NORMALITEM_EXTRAINFO2 itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_NORMAL_ITEMLIST2() {
  var result = indent + 'PACKET_ZC_CART_NORMAL_ITEMLIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO2().replace('NORMALITEM_EXTRAINFO2', 'NORMALITEM_EXTRAINFO2 itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_NORMAL_ITEMLIST2() {
  var result = indent + 'PACKET_ZC_STORE_NORMAL_ITEMLIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO2().replace('NORMALITEM_EXTRAINFO2', 'NORMALITEM_EXTRAINFO2 itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_NOTIFY_ERROR() {
  var result = indent + 'PACKET_AC_NOTIFY_ERROR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_CHARSTAT2() {
  var result = indent + 'PACKET_ZC_UPDATE_CHARSTAT2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'status = ' + reader.fetchInt32() + '\n';
  result += indent + 'sex = ' + reader.fetchInt16() + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'headPalette = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_EFFECT2() {
  var result = indent + 'PACKET_ZC_NOTIFY_EFFECT2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'effectID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_EXCHANGE_ITEM2() {
  var result = indent + 'PACKET_ZC_REQ_EXCHANGE_ITEM2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_EXCHANGE_ITEM2() {
  var result = indent + 'PACKET_ZC_ACK_EXCHANGE_ITEM2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_BABY() {
  var result = indent + 'PACKET_ZC_REQ_BABY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_JOIN_BABY() {
  var result = indent + 'PACKET_CZ_JOIN_BABY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'answer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_START_BABY() {
  var result = indent + 'PACKET_ZC_START_BABY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_JOIN_BABY() {
  var result = indent + 'PACKET_CZ_REQ_JOIN_BABY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN3() {
  var result = indent + 'PACKET_CA_LOGIN3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'PasswdMD5[16] = ' + reader.fetchUint8Arr(16) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'ClientInfo = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_DELETE_CHAR2() {
  var result = indent + 'PACKET_CH_DELETE_CHAR2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'key[50] = ' + reader.fetchInt8Arr(50) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REPAIRITEMLIST() {
  var result = indent + 'PACKET_ZC_REPAIRITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += REPAIRITEM_INFO().replace('REPAIRITEM_INFO', 'REPAIRITEM_INFO itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ITEMREPAIR() {
  var result = indent + 'PACKET_CZ_REQ_ITEMREPAIR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += REPAIRITEM_INFO().replace('REPAIRITEM_INFO', 'REPAIRITEM_INFO TargetItemInfo');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ITEMREPAIR() {
  var result = indent + 'PACKET_ZC_ACK_ITEMREPAIR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_HIGHJUMP() {
  var result = indent + 'PACKET_ZC_HIGHJUMP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_CONNECT_INFO_CHANGED() {
  var result = indent + 'PACKET_CA_CONNECT_INFO_CHANGED {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function FRIEND_INFO() {
  var result = indent + 'FRIEND_INFO {\n';
  indent += '\t';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FRIENDS_LIST() {
  var result = indent + 'PACKET_ZC_FRIENDS_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += FRIEND_INFO().replace('FRIEND_INFO', 'FRIEND_INFO friendList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ADD_FRIENDS() {
  var result = indent + 'PACKET_CZ_ADD_FRIENDS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_DELETE_FRIENDS() {
  var result = indent + 'PACKET_CZ_DELETE_FRIENDS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_EXE_HASHCHECK() {
  var result = indent + 'PACKET_CA_EXE_HASHCHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'HashValue[16] = ' + reader.fetchUint8Arr(16) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DIVORCE() {
  var result = indent + 'PACKET_ZC_DIVORCE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FRIENDS_STATE() {
  var result = indent + 'PACKET_ZC_FRIENDS_STATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'State = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_ADD_FRIENDS() {
  var result = indent + 'PACKET_ZC_REQ_ADD_FRIENDS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ReqAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ReqGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACK_REQ_ADD_FRIENDS() {
  var result = indent + 'PACKET_CZ_ACK_REQ_ADD_FRIENDS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ReqAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ReqGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_FRIENDS_LIST() {
  var result = indent + 'PACKET_ZC_ADD_FRIENDS_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETE_FRIENDS() {
  var result = indent + 'PACKET_ZC_DELETE_FRIENDS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_EXE_HASHCHECK() {
  var result = indent + 'PACKET_CH_EXE_HASHCHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ClientType = ' + reader.fetchUint8() + '\n';
  result += indent + 'HashValue[16] = ' + reader.fetchUint8Arr(16) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_EXE_HASHCHECK() {
  var result = indent + 'PACKET_CZ_EXE_HASHCHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ClientType = ' + reader.fetchUint8() + '\n';
  result += indent + 'HashValue[16] = ' + reader.fetchUint8Arr(16) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function TAG_CHARACTER_BLOCK_INFO() {
  var result = indent + 'TAG_CHARACTER_BLOCK_INFO {\n';
  indent += '\t';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'szExpireDate[20] = ' + reader.fetchInt8Arr(20) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_BLOCK_CHARACTER() {
  var result = indent + 'PACKET_HC_BLOCK_CHARACTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += TAG_CHARACTER_BLOCK_INFO().replace('TAG_CHARACTER_BLOCK_INFO', 'TAG_CHARACTER_BLOCK_INFO characterList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STARSKILL() {
  var result = indent + 'PACKET_ZC_STARSKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'mapName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'monsterID = ' + reader.fetchInt32() + '\n';
  result += indent + 'star = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_PVPPOINT() {
  var result = indent + 'PACKET_CZ_REQ_PVPPOINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PVPINFO() {
  var result = indent + 'PVPINFO {\n';
  indent += '\t';
  result += indent + 'WinPoint = ' + reader.fetchInt32() + '\n';
  result += indent + 'LosePoint = ' + reader.fetchInt32() + '\n';
  result += indent + 'Point = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_PVPPOINT() {
  var result = indent + 'PACKET_ZC_ACK_PVPPOINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += PVPINFO().replace('PVPINFO', 'PVPINFO PVP');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZH_MOVE_PVPWORLD() {
  var result = indent + 'PACKET_ZH_MOVE_PVPWORLD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GIVE_MANNER_BYNAME() {
  var result = indent + 'PACKET_CZ_REQ_GIVE_MANNER_BYNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_STATUS_GM() {
  var result = indent + 'PACKET_CZ_REQ_STATUS_GM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_STATUS_GM() {
  var result = indent + 'PACKET_ZC_ACK_STATUS_GM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'str = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardStr = ' + reader.fetchUint8() + '\n';
  result += indent + 'agi = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardAgi = ' + reader.fetchUint8() + '\n';
  result += indent + 'vit = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardVit = ' + reader.fetchUint8() + '\n';
  result += indent + 'Int = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardInt = ' + reader.fetchUint8() + '\n';
  result += indent + 'dex = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardDex = ' + reader.fetchUint8() + '\n';
  result += indent + 'luk = ' + reader.fetchUint8() + '\n';
  result += indent + 'standardLuk = ' + reader.fetchUint8() + '\n';
  result += indent + 'attPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'refiningPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'max_mattPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'min_mattPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'itemdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'mdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusmdefPower = ' + reader.fetchInt16() + '\n';
  result += indent + 'hitSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'avoidSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusAvoidSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'criticalSuccessValue = ' + reader.fetchInt16() + '\n';
  result += indent + 'ASPD = ' + reader.fetchInt16() + '\n';
  result += indent + 'plusASPD = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILLMSG() {
  var result = indent + 'PACKET_ZC_SKILLMSG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MsgNo = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BABYMSG() {
  var result = indent + 'PACKET_ZC_BABYMSG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MsgNo = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_BLACKSMITH_RANK() {
  var result = indent + 'PACKET_CZ_BLACKSMITH_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ALCHEMIST_RANK() {
  var result = indent + 'PACKET_CZ_ALCHEMIST_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BLACKSMITH_RANK() {
  var result = indent + 'PACKET_ZC_BLACKSMITH_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 10; i++) {
    result += indent + 'Name[' + i + '][24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  }
  result += indent + 'Point[10] = ' + reader.fetchInt32Arr(10) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ALCHEMIST_RANK() {
  var result = indent + 'PACKET_ZC_ALCHEMIST_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 10; i++) {
    result += indent + 'Name[' + i + '][24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  }
  result += indent + 'Point[10] = ' + reader.fetchInt32Arr(10) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BLACKSMITH_POINT() {
  var result = indent + 'PACKET_ZC_BLACKSMITH_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Point = ' + reader.fetchInt32() + '\n';
  result += indent + 'TotalPoint = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ALCHEMIST_POINT() {
  var result = indent + 'PACKET_ZC_ALCHEMIST_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Point = ' + reader.fetchInt32() + '\n';
  result += indent + 'TotalPoint = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_LESSEFFECT() {
  var result = indent + 'PACKET_CZ_LESSEFFECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'isLess = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_LESSEFFECT() {
  var result = indent + 'PACKET_ZC_LESSEFFECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'isLess = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function _FILETIME() {
  var result = indent + '_FILETIME {\n';
  indent += '\t';
  result += indent + 'dwLowDateTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwHighDateTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_PKINFO() {
  var result = indent + 'PACKET_ZC_NOTIFY_PKINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'winPoint = ' + reader.fetchInt32() + '\n';
  result += indent + 'losePoint = ' + reader.fetchInt32() + '\n';
  result += indent + 'killName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'killedName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += _FILETIME().replace('_FILETIME', '_FILETIME expireTime');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_CRAZYKILLER() {
  var result = indent + 'PACKET_ZC_NOTIFY_CRAZYKILLER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'isCrazyKiller = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_WEAPONITEMLIST() {
  var result = indent + 'PACKET_ZC_NOTIFY_WEAPONITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += REPAIRITEM_INFO().replace('REPAIRITEM_INFO', 'REPAIRITEM_INFO itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_WEAPONREFINE() {
  var result = indent + 'PACKET_CZ_REQ_WEAPONREFINE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_WEAPONREFINE() {
  var result = indent + 'PACKET_ZC_ACK_WEAPONREFINE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg = ' + changeToString(reader.fetchInt32()) + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_TAEKWON_POINT() {
  var result = indent + 'PACKET_ZC_TAEKWON_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Point = ' + reader.fetchInt32() + '\n';
  result += indent + 'TotalPoint = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_TAEKWON_RANK() {
  var result = indent + 'PACKET_CZ_TAEKWON_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_TAEKWON_RANK() {
  var result = indent + 'PACKET_ZC_TAEKWON_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 10; i++) {
    result += indent + 'Name[' + i + '][24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  }
  result += indent + 'Point[10] = ' + reader.fetchInt32Arr(10) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GAME_GUARD() {
  var result = indent + 'PACKET_ZC_GAME_GUARD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuthData[4] = ' + reader.fetchUint32Arr(4) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACK_GAME_GUARD() {
  var result = indent + 'PACKET_CZ_ACK_GAME_GUARD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuthData[4] = ' + reader.fetchUint32Arr(4) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STATE_CHANGE3() {
  var result = indent + 'PACKET_ZC_STATE_CHANGE3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY3() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY3() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY3() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_COMMAND_MER() {
  var result = indent + 'PACKET_CZ_COMMAND_MER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  result += indent + 'command = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PROPERTY_HOMUN() {
  var result = indent + 'PACKET_ZC_PROPERTY_HOMUN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'szName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'bModified = ' + reader.fetchUint8() + '\n';
  result += indent + 'nLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'nFullness = ' + reader.fetchInt16() + '\n';
  result += indent + 'nRelationship = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'atk = ' + reader.fetchInt16() + '\n';
  result += indent + 'Matk = ' + reader.fetchInt16() + '\n';
  result += indent + 'hit = ' + reader.fetchInt16() + '\n';
  result += indent + 'critical = ' + reader.fetchInt16() + '\n';
  result += indent + 'def = ' + reader.fetchInt16() + '\n';
  result += indent + 'Mdef = ' + reader.fetchInt16() + '\n';
  result += indent + 'flee = ' + reader.fetchInt16() + '\n';
  result += indent + 'aspd = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt16() + '\n';
  result += indent + 'sp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxSP = ' + reader.fetchInt16() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxEXP = ' + reader.fetchInt32() + '\n';
  result += indent + 'SKPoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'ATKRange = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CHANGESTATE_MER() {
  var result = indent + 'PACKET_ZC_CHANGESTATE_MER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt8() + '\n';
  result += indent + 'state = ' + reader.fetchInt8() + '\n';
  result += indent + 'GID = ' + reader.fetchInt32() + '\n';
  result += indent + 'data = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RENAME_MER() {
  var result = indent + 'PACKET_CZ_RENAME_MER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_MOVENPC() {
  var result = indent + 'PACKET_CZ_REQUEST_MOVENPC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'dest[3] = ' + reader.fetchUint8Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_ACTNPC() {
  var result = indent + 'PACKET_CZ_REQUEST_ACTNPC {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_MOVETOOWNER() {
  var result = indent + 'PACKET_CZ_REQUEST_MOVETOOWNER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_STORE_PASSWORD() {
  var result = indent + 'PACKET_ZC_REQ_STORE_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Info = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACK_STORE_PASSWORD() {
  var result = indent + 'PACKET_CZ_ACK_STORE_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt16() + '\n';
  result += indent + 'Password[16] = ' + reader.fetchUint8Arr(16) + '\n';
  result += indent + 'NewPassword[16] = ' + reader.fetchUint8Arr(16) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_RESULT_STORE_PASSWORD() {
  var result = indent + 'PACKET_ZC_RESULT_STORE_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_EVENT_RESULT() {
  var result = indent + 'PACKET_AC_EVENT_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EventItemCount = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_REQUEST_CHARACTER_PASSWORD() {
  var result = indent + 'PACKET_HC_REQUEST_CHARACTER_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'dummyValue = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_GET_LIST() {
  var result = indent + 'PACKET_CZ_MAIL_GET_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function MAIL_LIST() {
  var result = indent + 'MAIL_LIST {\n';
  indent += '\t';
  result += indent + 'MailID = ' + reader.fetchUint32() + '\n';
  result += indent + 'HEADER[40] = ' + reader.fetchInt8Arr(40) + '\n';
  result += indent + 'isOpen = ' + reader.fetchInt8() + '\n';
  result += indent + 'FromName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'DeleteTime = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAIL_REQ_GET_LIST() {
  var result = indent + 'PACKET_ZC_MAIL_REQ_GET_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailNumber = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MAIL_LIST().replace('MAIL_LIST', 'MAIL_LIST mailList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_OPEN() {
  var result = indent + 'PACKET_CZ_MAIL_OPEN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAIL_REQ_OPEN() {
  var result = indent + 'PACKET_ZC_MAIL_REQ_OPEN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  result += indent + 'Header[40] = ' + reader.fetchInt8Arr(40) + '\n';
  result += indent + 'FromName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'DeleteTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'Money = ' + reader.fetchUint32() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'Type = ' + reader.fetchUint16() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'msg_len = ' + reader.fetchUint8() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_DELETE() {
  var result = indent + 'PACKET_CZ_MAIL_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_GET_ITEM() {
  var result = indent + 'PACKET_CZ_MAIL_GET_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAIL_REQ_GET_ITEM() {
  var result = indent + 'PACKET_ZC_MAIL_REQ_GET_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_RESET_ITEM() {
  var result = indent + 'PACKET_CZ_MAIL_RESET_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_ADD_ITEM() {
  var result = indent + 'PACKET_CZ_MAIL_ADD_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MAIL_SEND() {
  var result = indent + 'PACKET_CZ_MAIL_SEND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'ReceiveName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Header[40] = ' + reader.fetchInt8Arr(40) + '\n';
  result += indent + 'msg_len = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAIL_REQ_SEND() {
  var result = indent + 'PACKET_ZC_MAIL_REQ_SEND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAIL_RECEIVE() {
  var result = indent + 'PACKET_ZC_MAIL_RECEIVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Header[40] = ' + reader.fetchInt8Arr(40) + '\n';
  result += indent + 'FromName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_CREATE() {
  var result = indent + 'PACKET_CZ_AUCTION_CREATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_ADD_ITEM() {
  var result = indent + 'PACKET_CZ_AUCTION_ADD_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_ADD() {
  var result = indent + 'PACKET_CZ_AUCTION_ADD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NowMoney = ' + reader.fetchUint32() + '\n';
  result += indent + 'MaxMoney = ' + reader.fetchUint32() + '\n';
  result += indent + 'DeleteHour = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_ADD_CANCEL() {
  var result = indent + 'PACKET_CZ_AUCTION_ADD_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuctionID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_BUY() {
  var result = indent + 'PACKET_CZ_AUCTION_BUY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuctionID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Money = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AUCTION_RESULT() {
  var result = indent + 'PACKET_ZC_AUCTION_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_ITEM_SEARCH() {
  var result = indent + 'PACKET_CZ_AUCTION_ITEM_SEARCH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuctionID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Page = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function AUCTION_ITEM_SEARCH_INFO() {
  var result = indent + 'AUCTION_ITEM_SEARCH_INFO {\n';
  indent += '\t';
  result += indent + 'AuctionID = ' + reader.fetchUint32() + '\n';
  result += indent + 'SellerName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'NowPrice = ' + reader.fetchInt32() + '\n';
  result += indent + 'MaxPrice = ' + reader.fetchInt32() + '\n';
  result += indent + 'BuyerName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'DeleteTime = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AUCTION_ITEM_REQ_SEARCH() {
  var result = indent + 'PACKET_ZC_AUCTION_ITEM_REQ_SEARCH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'MaxPage = ' + reader.fetchInt32() + '\n';
  result += indent + 'Number = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += AUCTION_ITEM_SEARCH_INFO().replace('AUCTION_ITEM_SEARCH_INFO', 'AUCTION_ITEM_SEARCH_INFO auctionItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STARPLACE() {
  var result = indent + 'PACKET_ZC_STARPLACE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'which = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AGREE_STARPLACE() {
  var result = indent + 'PACKET_CZ_AGREE_STARPLACE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'which = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_MAIL_ADD_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_MAIL_ADD_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_AUCTION_ADD_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_AUCTION_ADD_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_MAIL_DELETE() {
  var result = indent + 'PACKET_ZC_ACK_MAIL_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_REQ_GAME_GUARD_CHECK() {
  var result = indent + 'PACKET_CA_REQ_GAME_GUARD_CHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_GAME_GUARD() {
  var result = indent + 'PACKET_AC_ACK_GAME_GUARD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ucAnswer = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAKINGITEM_LIST() {
  var result = indent + 'PACKET_ZC_MAKINGITEM_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'idList[] = ' + reader.fetchUint16Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_MAKINGITEM() {
  var result = indent + 'PACKET_CZ_REQ_MAKINGITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'mkType = ' + reader.fetchInt16() + '\n';
  result += indent + 'id = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_REQ_MY_INFO() {
  var result = indent + 'PACKET_CZ_AUCTION_REQ_MY_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_AUCTION_REQ_MY_SELL_STOP() {
  var result = indent + 'PACKET_CZ_AUCTION_REQ_MY_SELL_STOP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuctionID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AUCTION_ACK_MY_SELL_STOP() {
  var result = indent + 'PACKET_ZC_AUCTION_ACK_MY_SELL_STOP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AUCTION_WINDOWS() {
  var result = indent + 'PACKET_ZC_AUCTION_WINDOWS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAIL_WINDOWS() {
  var result = indent + 'PACKET_ZC_MAIL_WINDOWS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQ_LOGIN_OLDEKEY() {
  var result = indent + 'PACKET_AC_REQ_LOGIN_OLDEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'm_SeedValue[9] = ' + reader.fetchInt8Arr(9) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQ_LOGIN_NEWEKEY() {
  var result = indent + 'PACKET_AC_REQ_LOGIN_NEWEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'm_SeedValue[9] = ' + reader.fetchInt8Arr(9) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQ_LOGIN_CARDPASS() {
  var result = indent + 'PACKET_AC_REQ_LOGIN_CARDPASS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'm_SeedValue[9] = ' + reader.fetchInt8Arr(9) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_ACK_LOGIN_OLDEKEY() {
  var result = indent + 'PACKET_CA_ACK_LOGIN_OLDEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'm_SeedValue[9] = ' + reader.fetchInt8Arr(9) + '\n';
  result += indent + 'm_EKey[9] = ' + reader.fetchInt8Arr(9) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_ACK_LOGIN_NEWEKEY() {
  var result = indent + 'PACKET_CA_ACK_LOGIN_NEWEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'm_SeedValue[9] = ' + reader.fetchInt8Arr(9) + '\n';
  result += indent + 'm_EKey[9] = ' + reader.fetchInt8Arr(9) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_ACK_LOGIN_CARDPASS() {
  var result = indent + 'PACKET_CA_ACK_LOGIN_CARDPASS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'm_cardPass[28] = ' + reader.fetchInt8Arr(28) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_NOTEXIST() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_NOTEXIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_NOTUSESEKEY() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_NOTUSESEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_NOTUSEDEKEY() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_NOTUSEDEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_AUTHREFUSE() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_AUTHREFUSE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_INPUTEKEY() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_INPUTEKEY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_NOTICE() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_NOTICE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_EKEY_FAIL_NEEDCARDPASS() {
  var result = indent + 'PACKET_AC_ACK_EKEY_FAIL_NEEDCARDPASS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_AUTHEKEY_FAIL_NOTMATCHCARDPASS() {
  var result = indent + 'PACKET_AC_ACK_AUTHEKEY_FAIL_NOTMATCHCARDPASS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'errorCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_FIRST_LOGIN() {
  var result = indent + 'PACKET_AC_ACK_FIRST_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQ_LOGIN_ACCOUNT_INFO() {
  var result = indent + 'PACKET_AC_REQ_LOGIN_ACCOUNT_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_ACK_LOGIN_ACCOUNT_INFO() {
  var result = indent + 'PACKET_CA_ACK_LOGIN_ACCOUNT_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'sex = ' + reader.fetchInt16() + '\n';
  result += indent + 'bPoint = ' + reader.fetchInt16() + '\n';
  result += indent + 'E_mail[34] = ' + reader.fetchInt8Arr(34) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACK_PT_ID_INFO() {
  var result = indent + 'PACKET_AC_ACK_PT_ID_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'szPTID[21] = ' + reader.fetchInt8Arr(21) + '\n';
  result += indent + 'szPTNumID[21] = ' + reader.fetchInt8Arr(21) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_MAIL_RETURN() {
  var result = indent + 'PACKET_CZ_REQ_MAIL_RETURN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  result += indent + 'ReceiveName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_MAIL_RETURN() {
  var result = indent + 'PACKET_ZC_ACK_MAIL_RETURN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MailID = ' + reader.fetchInt32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_ENTER2() {
  var result = indent + 'PACKET_CH_ENTER2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'userLevel = ' + reader.fetchUint32() + '\n';
  result += indent + 'clientType = ' + reader.fetchUint16() + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'macData[16] = ' + reader.fetchInt8Arr(16) + '\n';
  result += indent + 'iAccountSID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_ACCEPT_LOGIN2() {
  var result = indent + 'PACKET_AC_ACCEPT_LOGIN2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'userLevel = ' + reader.fetchUint32() + '\n';
  result += indent + 'lastLoginIP = ' + reader.fetchUint32() + '\n';
  result += indent + 'lastLoginTime[26] = ' + reader.fetchInt8Arr(26) + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'iAccountSID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN_PCBANG() {
  var result = indent + 'PACKET_CA_LOGIN_PCBANG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Passwd[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'IP[16] = ' + reader.fetchInt8Arr(16) + '\n';
  result += indent + 'MacAdress[13] = ' + reader.fetchUint8Arr(13) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_PCBANG() {
  var result = indent + 'PACKET_ZC_NOTIFY_PCBANG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_HUNTINGLIST() {
  var result = indent + 'PACKET_CZ_HUNTINGLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_HUNTINGLIST() {
  var result = indent + 'PACKET_ZC_HUNTINGLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MOB_HUNTING().replace('MOB_HUNTING', 'MOB_HUNTING HuntingList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PCBANG_EFFECT() {
  var result = indent + 'PACKET_ZC_PCBANG_EFFECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ExpFactor = ' + reader.fetchInt32() + '\n';
  result += indent + 'ExpFactor2 = ' + reader.fetchInt32() + '\n';
  result += indent + 'DropFactor = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN4() {
  var result = indent + 'PACKET_CA_LOGIN4 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'PasswdMD5[16] = ' + reader.fetchUint8Arr(16) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'macData[13] = ' + reader.fetchInt8Arr(13) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PROPERTY_MERCE() {
  var result = indent + 'PACKET_ZC_PROPERTY_MERCE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'faith = ' + reader.fetchInt16() + '\n';
  result += indent + 'summonCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'atk = ' + reader.fetchInt16() + '\n';
  result += indent + 'Matk = ' + reader.fetchInt16() + '\n';
  result += indent + 'hit = ' + reader.fetchInt16() + '\n';
  result += indent + 'critical = ' + reader.fetchInt16() + '\n';
  result += indent + 'def = ' + reader.fetchInt16() + '\n';
  result += indent + 'Mdef = ' + reader.fetchInt16() + '\n';
  result += indent + 'flee = ' + reader.fetchInt16() + '\n';
  result += indent + 'aspd = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt16() + '\n';
  result += indent + 'sp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxSP = ' + reader.fetchInt16() + '\n';
  result += indent + 'ATKRange = ' + reader.fetchInt16() + '\n';
  result += indent + 'exp = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SHANDA_PROTECT() {
  var result = indent + 'PACKET_ZC_SHANDA_PROTECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'CodeLen = ' + reader.fetchInt16() + '\n';
  result += indent + 'Code[] = ' + reader.fetchUint8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_CLIENT_TYPE() {
  var result = indent + 'PACKET_CA_CLIENT_TYPE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ClientType = ' + reader.fetchInt16() + '\n';
  result += indent + 'nVer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GANGSI_POINT() {
  var result = indent + 'PACKET_ZC_GANGSI_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Point = ' + reader.fetchInt32() + '\n';
  result += indent + 'TotalPoint = ' + reader.fetchInt32() + '\n';
  result += indent + 'PacketSwitch = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GANGSI_RANK() {
  var result = indent + 'PACKET_CZ_GANGSI_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketSwitch = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GANGSI_RANK() {
  var result = indent + 'PACKET_ZC_GANGSI_RANK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 10; i++) {
    result += indent + 'Name[' + i + '][24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  }
  result += indent + 'Point[10] = ' + reader.fetchInt32Arr(10) + '\n';
  result += indent + 'PacketSwitch = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_AID() {
  var result = indent + 'PACKET_ZC_AID {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_EFFECT3() {
  var result = indent + 'PACKET_ZC_NOTIFY_EFFECT3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'effectID = ' + reader.fetchInt32() + '\n';
  result += indent + 'numdata = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DEATH_QUESTION() {
  var result = indent + 'PACKET_ZC_DEATH_QUESTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Qcategory = ' + reader.fetchInt16() + '\n';
  result += indent + 'Qnum = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_DEATH_QUESTION() {
  var result = indent + 'PACKET_CZ_DEATH_QUESTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Qanswer = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_CASH_POINT_ITEMLIST() {
  var result = indent + 'PACKET_ZC_PC_CASH_POINT_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'CashPoint = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_ITEM().replace('PURCHASE_ITEM', 'PURCHASE_ITEM itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PC_BUY_CASH_POINT_ITEM() {
  var result = indent + 'PACKET_CZ_PC_BUY_CASH_POINT_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_CASH_POINT_UPDATE() {
  var result = indent + 'PACKET_ZC_PC_CASH_POINT_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CashPoint = ' + reader.fetchUint32() + '\n';
  result += indent + 'Error = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NPC_SHOWEFST_UPDATE() {
  var result = indent + 'PACKET_ZC_NPC_SHOWEFST_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt32() + '\n';
  result += indent + 'showEFST = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_SELECT_CHAR_GOINGTOBEUSED() {
  var result = indent + 'PACKET_CH_SELECT_CHAR_GOINGTOBEUSED {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'nCountSelectedChar = ' + reader.fetchInt32() + '\n';
  result += indent + 'ardwSelectedGID[9] = ' + reader.fetchUint32Arr(9) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_REQ_IS_VALID_CHARNAME() {
  var result = indent + 'PACKET_CH_REQ_IS_VALID_CHARNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'szCharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACK_IS_VALID_CHARNAME() {
  var result = indent + 'PACKET_HC_ACK_IS_VALID_CHARNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'sResult = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_REQ_CHANGE_CHARNAME() {
  var result = indent + 'PACKET_CH_REQ_CHANGE_CHARNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwGID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACK_CHANGE_CHARNAME() {
  var result = indent + 'PACKET_HC_ACK_CHANGE_CHARNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'sResult = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MSG() {
  var result = indent + 'PACKET_ZC_MSG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg = ' + changeToString(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_STANDING_RESURRECTION() {
  var result = indent + 'PACKET_CZ_STANDING_RESURRECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BOSS_INFO() {
  var result = indent + 'PACKET_ZC_BOSS_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'infoType = ' + reader.fetchUint8() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt32() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt32() + '\n';
  result += indent + 'minHour = ' + reader.fetchUint16() + '\n';
  result += indent + 'minMinute = ' + reader.fetchUint16() + '\n';
  result += indent + 'maxHour = ' + reader.fetchUint16() + '\n';
  result += indent + 'maxMinute = ' + reader.fetchUint16() + '\n';
  result += indent + 'name[51] = ' + changeToString(reader.fetchInt8Arr(51)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_READ_BOOK() {
  var result = indent + 'PACKET_ZC_READ_BOOK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'bookID = ' + reader.fetchUint32() + '\n';
  result += indent + 'page = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPMENT_ITEMLIST2() {
  var result = indent + 'PACKET_ZC_EQUIPMENT_ITEMLIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO2().replace('EQUIPMENTITEM_EXTRAINFO2', 'EQUIPMENTITEM_EXTRAINFO2 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_EQUIPMENT_ITEMLIST2() {
  var result = indent + 'PACKET_ZC_STORE_EQUIPMENT_ITEMLIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO2().replace('EQUIPMENTITEM_EXTRAINFO2', 'EQUIPMENTITEM_EXTRAINFO2 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_EQUIPMENT_ITEMLIST2() {
  var result = indent + 'PACKET_ZC_CART_EQUIPMENT_ITEMLIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO2().replace('EQUIPMENTITEM_EXTRAINFO2', 'EQUIPMENTITEM_EXTRAINFO2 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CASH_TIME_COUNTER() {
  var result = indent + 'PACKET_ZC_CASH_TIME_COUNTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'RemainSecond = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CASH_ITEM_DELETE() {
  var result = indent + 'PACKET_ZC_CASH_ITEM_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_PICKUP_ACK2() {
  var result = indent + 'PACKET_ZC_ITEM_PICKUP_ACK2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchUint16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MER_INIT() {
  var result = indent + 'PACKET_ZC_MER_INIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  result += indent + 'atk = ' + reader.fetchInt16() + '\n';
  result += indent + 'Matk = ' + reader.fetchInt16() + '\n';
  result += indent + 'hit = ' + reader.fetchInt16() + '\n';
  result += indent + 'critical = ' + reader.fetchInt16() + '\n';
  result += indent + 'def = ' + reader.fetchInt16() + '\n';
  result += indent + 'Mdef = ' + reader.fetchInt16() + '\n';
  result += indent + 'flee = ' + reader.fetchInt16() + '\n';
  result += indent + 'aspd = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt32() + '\n';
  result += indent + 'sp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxSP = ' + reader.fetchInt32() + '\n';
  result += indent + 'ExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'faith = ' + reader.fetchInt16() + '\n';
  result += indent + 'toal_call_num = ' + reader.fetchInt32() + '\n';
  result += indent + 'approval_monster_kill_counter = ' + reader.fetchInt32() + '\n';
  result += indent + 'ATKRange = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MER_PROPERTY() {
  var result = indent + 'PACKET_ZC_MER_PROPERTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'atk = ' + reader.fetchInt16() + '\n';
  result += indent + 'Matk = ' + reader.fetchInt16() + '\n';
  result += indent + 'hit = ' + reader.fetchInt16() + '\n';
  result += indent + 'critical = ' + reader.fetchInt16() + '\n';
  result += indent + 'def = ' + reader.fetchInt16() + '\n';
  result += indent + 'Mdef = ' + reader.fetchInt16() + '\n';
  result += indent + 'flee = ' + reader.fetchInt16() + '\n';
  result += indent + 'aspd = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'hp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt16() + '\n';
  result += indent + 'sp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxSP = ' + reader.fetchInt16() + '\n';
  result += indent + 'ExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'faith = ' + reader.fetchInt16() + '\n';
  result += indent + 'toal_call_num = ' + reader.fetchInt32() + '\n';
  result += indent + 'approval_monster_kill_counter = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MER_SKILLINFO_LIST() {
  var result = indent + 'PACKET_ZC_MER_SKILLINFO_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += SKILLINFO().replace('SKILLINFO', 'SKILLINFO skillList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MER_SKILLINFO_UPDATE() {
  var result = indent + 'PACKET_ZC_MER_SKILLINFO_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'spcost = ' + reader.fetchInt16() + '\n';
  result += indent + 'attackRange = ' + reader.fetchInt16() + '\n';
  result += indent + 'upgradable = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MER_COMMAND() {
  var result = indent + 'PACKET_CZ_MER_COMMAND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'command = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function UNUSED_PACKET_CZ_MER_USE_SKILL() {
  var result = indent + 'UNUSED_PACKET_CZ_MER_USE_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function UNUSED_PACKET_CZ_MER_UPGRADE_SKILLLEVEL() {
  var result = indent + 'UNUSED_PACKET_CZ_MER_UPGRADE_SKILLLEVEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MER_PAR_CHANGE() {
  var result = indent + 'PACKET_ZC_MER_PAR_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'var = ' + reader.fetchUint16() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PGG_LINGO_KEY_TEMP() {
  var result = indent + 'PGG_LINGO_KEY_TEMP {\n';
  indent += '\t';
  result += indent + 'dwAlgNum = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwAlgKey1 = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwAlgKey2 = ' + reader.fetchUint32() + '\n';
  result += indent + 'dwSeed = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GAMEGUARD_LINGO_KEY() {
  var result = indent + 'PACKET_ZC_GAMEGUARD_LINGO_KEY {\n';
  indent += '\t';
  result += indent + 'packetType = ' + reader.fetchInt16() + '\n';
  result += PGG_LINGO_KEY_TEMP().replace('PGG_LINGO_KEY_TEMP', 'PGG_LINGO_KEY_TEMP lingoKey');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_KSY_EVENT() {
  var result = indent + 'PACKET_CZ_KSY_EVENT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_CASH_PASSWORD() {
  var result = indent + 'PACKET_ZC_REQ_CASH_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Info = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACK_CASH_PASSWORD() {
  var result = indent + 'PACKET_CZ_ACK_CASH_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt16() + '\n';
  result += indent + 'Password[16] = ' + reader.fetchUint8Arr(16) + '\n';
  result += indent + 'NewPassword[16] = ' + reader.fetchUint8Arr(16) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_RESULT_CASH_PASSWORD() {
  var result = indent + 'PACKET_ZC_RESULT_CASH_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQUEST_SECOND_PASSWORD() {
  var result = indent + 'PACKET_AC_REQUEST_SECOND_PASSWORD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwSeed = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN_HAN() {
  var result = indent + 'PACKET_CA_LOGIN_HAN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Passwd[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'm_szIP[16] = ' + reader.fetchInt8Arr(16) + '\n';
  result += indent + 'm_szMacAddr[13] = ' + reader.fetchUint8Arr(13) + '\n';
  result += indent + 'isHanGameUser = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_QUEST_INFO() {
  var result = indent + 'PACKET_ZC_QUEST_INFO {\n';
  indent += '\t';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'active = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ALL_QUEST_LIST() {
  var result = indent + 'PACKET_ZC_ALL_QUEST_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'questCount = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PACKET_ZC_QUEST_INFO().replace('PACKET_ZC_QUEST_INFO', 'PACKET_ZC_QUEST_INFO QuestList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ZC_QUEST_MISSION_INFO() {
  var result = indent + 'ZC_QUEST_MISSION_INFO {\n';
  indent += '\t';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'quest_svrTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'quest_endTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 3; i++) {
    result += ZC_MISSION_HUNT().replace('ZC_MISSION_HUNT', 'ZC_MISSION_HUNT hunt[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ALL_QUEST_MISSION() {
  var result = indent + 'PACKET_ZC_ALL_QUEST_MISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ZC_QUEST_MISSION_INFO().replace('ZC_QUEST_MISSION_INFO', 'ZC_QUEST_MISSION_INFO QuestMissionList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_QUEST() {
  var result = indent + 'PACKET_ZC_ADD_QUEST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'active = ' + reader.fetchBool() + '\n';
  result += indent + 'quest_svrTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'quest_endTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 3; i++) {
    result += ZC_MISSION_HUNT().replace('ZC_MISSION_HUNT', 'ZC_MISSION_HUNT hunt[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DEL_QUEST() {
  var result = indent + 'PACKET_ZC_DEL_QUEST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_MISSION_HUNT() {
  var result = indent + 'PACKET_ZC_UPDATE_MISSION_HUNT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += MOB_HUNTING().replace('MOB_HUNTING', 'MOB_HUNTING MobHuntList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ACTIVE_QUEST() {
  var result = indent + 'PACKET_CZ_ACTIVE_QUEST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'active = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACTIVE_QUEST() {
  var result = indent + 'PACKET_ZC_ACTIVE_QUEST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'active = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_PICKUP_PARTY() {
  var result = indent + 'PACKET_ZC_ITEM_PICKUP_PARTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SHORTCUT_KEY_LIST() {
  var result = indent + 'PACKET_ZC_SHORTCUT_KEY_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 27; i++) {
    result += ShortCutKey().replace('ShortCutKey', 'ShortCutKey shortcut[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SHORTCUT_KEY_CHANGE() {
  var result = indent + 'PACKET_CZ_SHORTCUT_KEY_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += ShortCutKey().replace('ShortCutKey', 'ShortCutKey shortcut');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPITEM_DAMAGED() {
  var result = indent + 'PACKET_ZC_EQUIPITEM_DAMAGED {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_PCBANG_PLAYING_TIME() {
  var result = indent + 'PACKET_ZC_NOTIFY_PCBANG_PLAYING_TIME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'TimeMinute = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SRPACKETR2_INIT() {
  var result = indent + 'PACKET_ZC_SRPACKETR2_INIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ProtectFactor = ' + reader.fetchUint16() + '\n';
  result += indent + 'DeformSeedFactor = ' + reader.fetchUint32() + '\n';
  result += indent + 'DeformAddFactor = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SRPACKETR2_START() {
  var result = indent + 'PACKET_CZ_SRPACKETR2_START {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ProtectFactor = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NPC_CHAT() {
  var result = indent + 'PACKET_ZC_NPC_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  result += indent + 'color = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FORMATSTRING_MSG() {
  var result = indent + 'PACKET_ZC_FORMATSTRING_MSG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg = ' + changeToString(reader.fetchUint16()) + '\n';
  result += indent + 'value[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_JOIN_REQ() {
  var result = indent + 'PACKET_CZ_PARTY_JOIN_REQ {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_JOIN_REQ_ACK() {
  var result = indent + 'PACKET_ZC_PARTY_JOIN_REQ_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'answer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_JOIN_REQ() {
  var result = indent + 'PACKET_ZC_PARTY_JOIN_REQ {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GRID = ' + reader.fetchUint32() + '\n';
  result += indent + 'groupName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_JOIN_REQ_ACK() {
  var result = indent + 'PACKET_CZ_PARTY_JOIN_REQ_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GRID = ' + reader.fetchUint32() + '\n';
  result += indent + 'bAccept = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_CONFIG() {
  var result = indent + 'PACKET_CZ_PARTY_CONFIG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'bRefuseJoinMsg = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_CONFIG() {
  var result = indent + 'PACKET_ZC_PARTY_CONFIG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'bRefuseJoinMsg = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_REFUSE_SELECTCHAR() {
  var result = indent + 'PACKET_HC_REFUSE_SELECTCHAR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMORIALDUNGEON_SUBSCRIPTION_INFO() {
  var result = indent + 'PACKET_ZC_MEMORIALDUNGEON_SUBSCRIPTION_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MemorialDungeonName[61] = ' + changeToString(reader.fetchInt8Arr(61)) + '\n';
  result += indent + 'PriorityOrderNum = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMORIALDUNGEON_SUBSCRIPTION_NOTIFY() {
  var result = indent + 'PACKET_ZC_MEMORIALDUNGEON_SUBSCRIPTION_NOTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PriorityOrderNum = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMORIALDUNGEON_INFO() {
  var result = indent + 'PACKET_ZC_MEMORIALDUNGEON_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'MemorialDungeonName[61] = ' + changeToString(reader.fetchInt8Arr(61)) + '\n';
  result += indent + 'DestroyDate = ' + reader.fetchUint32() + '\n';
  result += indent + 'EnterTimeOutDate = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MEMORIALDUNGEON_NOTIFY() {
  var result = indent + 'PACKET_ZC_MEMORIALDUNGEON_NOTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  result += indent + 'EnterLimitDate = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MEMORIALDUNGEON_COMMAND() {
  var result = indent + 'PACKET_CZ_MEMORIALDUNGEON_COMMAND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Command = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPMENT_ITEMLIST3() {
  var result = indent + 'PACKET_ZC_EQUIPMENT_ITEMLIST3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO3().replace('EQUIPMENTITEM_EXTRAINFO3', 'EQUIPMENTITEM_EXTRAINFO3 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_EQUIPMENT_ITEMLIST3() {
  var result = indent + 'PACKET_ZC_STORE_EQUIPMENT_ITEMLIST3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO3().replace('EQUIPMENTITEM_EXTRAINFO3', 'EQUIPMENTITEM_EXTRAINFO3 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_EQUIPMENT_ITEMLIST3() {
  var result = indent + 'PACKET_ZC_CART_EQUIPMENT_ITEMLIST3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO3().replace('EQUIPMENTITEM_EXTRAINFO3', 'EQUIPMENTITEM_EXTRAINFO3 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_BIND_ON_EQUIP() {
  var result = indent + 'PACKET_ZC_NOTIFY_BIND_ON_EQUIP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_PICKUP_ACK3() {
  var result = indent + 'PACKET_ZC_ITEM_PICKUP_ACK3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchUint16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'location = ' + reader.fetchUint16() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'bindOnEquipType = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ISVR_DISCONNECT() {
  var result = indent + 'PACKET_ZC_ISVR_DISCONNECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_EQUIPWIN_MICROSCOPE() {
  var result = indent + 'PACKET_CZ_EQUIPWIN_MICROSCOPE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPWIN_MICROSCOPE() {
  var result = indent + 'PACKET_ZC_EQUIPWIN_MICROSCOPE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += EQUIPMENTITEM_EXTRAINFO3().replace('EQUIPMENTITEM_EXTRAINFO3', 'EQUIPMENTITEM_EXTRAINFO3 ItemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CONFIG() {
  var result = indent + 'PACKET_CZ_CONFIG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Config = ' + reader.fetchInt32() + '\n';
  result += indent + 'Value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CONFIG() {
  var result = indent + 'PACKET_ZC_CONFIG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Config = ' + reader.fetchInt32() + '\n';
  result += indent + 'Value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CONFIG_NOTIFY() {
  var result = indent + 'PACKET_ZC_CONFIG_NOTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'bOpenEquipmentWin = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_BATTLEFIELD_CHAT() {
  var result = indent + 'PACKET_CZ_BATTLEFIELD_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLEFIELD_CHAT() {
  var result = indent + 'PACKET_ZC_BATTLEFIELD_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLEFIELD_NOTIFY_CAMPINFO() {
  var result = indent + 'PACKET_ZC_BATTLEFIELD_NOTIFY_CAMPINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'camp = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLEFIELD_NOTIFY_POINT() {
  var result = indent + 'PACKET_ZC_BATTLEFIELD_NOTIFY_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'pointCampA = ' + reader.fetchInt16() + '\n';
  result += indent + 'pointCampB = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLEFIELD_NOTIFY_POSITION() {
  var result = indent + 'PACKET_ZC_BATTLEFIELD_NOTIFY_POSITION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchUint16()) + '\n';
  result += indent + 'x = ' + reader.fetchInt16() + '\n';
  result += indent + 'y = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLEFIELD_NOTIFY_HP() {
  var result = indent + 'PACKET_ZC_BATTLEFIELD_NOTIFY_HP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'accountID = ' + reader.fetchUint32() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'hp = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHp = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ACT2() {
  var result = indent + 'PACKET_ZC_NOTIFY_ACT2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'attackMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'attackedMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'damage = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  result += indent + 'leftDamage = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_BOT_CHECK() {
  var result = indent + 'PACKET_CZ_BOT_CHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'IsBot = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAPPROPERTY() {
  var result = indent + 'PACKET_ZC_MAPPROPERTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  result += indent + 'mapInfoTable[] = ' + reader.fetchInt32Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NORMAL_ITEMLIST3() {
  var result = indent + 'PACKET_ZC_NORMAL_ITEMLIST3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO3().replace('NORMALITEM_EXTRAINFO3', 'NORMALITEM_EXTRAINFO3 itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_NORMAL_ITEMLIST3() {
  var result = indent + 'PACKET_ZC_CART_NORMAL_ITEMLIST3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO3().replace('NORMALITEM_EXTRAINFO3', 'NORMALITEM_EXTRAINFO3 itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_NORMAL_ITEMLIST3() {
  var result = indent + 'PACKET_ZC_STORE_NORMAL_ITEMLIST3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += NORMALITEM_EXTRAINFO3().replace('NORMALITEM_EXTRAINFO3', 'NORMALITEM_EXTRAINFO3 itemInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACCEPT_ENTER2() {
  var result = indent + 'PACKET_ZC_ACCEPT_ENTER2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY4() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY4 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY4() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY4 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY4() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY4 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_FONT() {
  var result = indent + 'PACKET_ZC_NOTIFY_FONT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PROGRESS() {
  var result = indent + 'PACKET_ZC_PROGRESS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'color = ' + reader.fetchUint32() + '\n';
  result += indent + 'time = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PROGRESS() {
  var result = indent + 'PACKET_CZ_PROGRESS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PROGRESS_CANCEL() {
  var result = indent + 'PACKET_ZC_PROGRESS_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CZ_IRMAIL_SEND() {
  var result = indent + 'CZ_IRMAIL_SEND {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'id = ' + reader.fetchInt16() + '\n';
  result += indent + 'cnt = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_IRMAIL_SEND() {
  var result = indent + 'PACKET_CZ_IRMAIL_SEND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchUint16() + '\n';
  result += indent + 'ReceiveName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Title[40] = ' + reader.fetchInt8Arr(40) + '\n';
  result += indent + 'Zeny = ' + reader.fetchInt32() + '\n';
  result += CZ_IRMAIL_SEND().replace('CZ_IRMAIL_SEND', 'CZ_IRMAIL_SEND tagItem');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_IRMAIL_SEND_RES() {
  var result = indent + 'PACKET_ZC_IRMAIL_SEND_RES {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_IRMAIL_NOTIFY() {
  var result = indent + 'PACKET_ZC_IRMAIL_NOTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += IRMAILID().replace('IRMAILID', 'IRMAILID MailID');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_IRMAIL_LIST() {
  var result = indent + 'PACKET_CZ_IRMAIL_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += IRMAILID().replace('IRMAILID', 'IRMAILID MailID');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_OPEN_SIMPLE_CASHSHOP_ITEMLIST() {
  var result = indent + 'PACKET_CZ_OPEN_SIMPLE_CASHSHOP_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SIMPLE_CASHSHOP_POINT_ITEMLIST() {
  var result = indent + 'PACKET_ZC_SIMPLE_CASHSHOP_POINT_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'CashPoint = ' + reader.fetchUint32() + '\n';
  result += indent + 'md_itemcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'md_itemSize = ' + reader.fetchInt16() + '\n';
  result += indent + 'best_itemcount = ' + reader.fetchInt16() + '\n';
  result += indent + 'best_itemsize = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_ITEM().replace('PURCHASE_ITEM', 'PURCHASE_ITEM ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLOSE_WINDOW() {
  var result = indent + 'PACKET_CZ_CLOSE_WINDOW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_MOVE2() {
  var result = indent + 'PACKET_CZ_REQUEST_MOVE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dest[3] = ' + reader.fetchUint8Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_TIME2() {
  var result = indent + 'PACKET_CZ_REQUEST_TIME2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'clientTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_DIRECTION2() {
  var result = indent + 'PACKET_CZ_CHANGE_DIRECTION2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'dir = ' + changeToDirection(reader.fetchUint8()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ITEM_PICKUP2() {
  var result = indent + 'PACKET_CZ_ITEM_PICKUP2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ITEM_THROW2() {
  var result = indent + 'PACKET_CZ_ITEM_THROW2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_BODY_TO_STORE2() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_BODY_TO_STORE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MOVE_ITEM_FROM_STORE_TO_BODY2() {
  var result = indent + 'PACKET_CZ_MOVE_ITEM_FROM_STORE_TO_BODY2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_SKILL_TOGROUND2() {
  var result = indent + 'PACKET_CZ_USE_SKILL_TOGROUND2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_SKILL_TOGROUND_WITHTALKBOX2() {
  var result = indent + 'PACKET_CZ_USE_SKILL_TOGROUND_WITHTALKBOX2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'contents[80] = ' + reader.fetchInt8Arr(80) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQNAME2() {
  var result = indent + 'PACKET_CZ_REQNAME2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQNAME_BYGID2() {
  var result = indent + 'PACKET_CZ_REQNAME_BYGID2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CAH_ACK_GAME_GUARD() {
  var result = indent + 'PACKET_CAH_ACK_GAME_GUARD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AuthData[4] = ' + reader.fetchUint32Arr(4) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ENTER2() {
  var result = indent + 'PACKET_CZ_ENTER2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'clientTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQUEST_ACT2() {
  var result = indent + 'PACKET_CZ_REQUEST_ACT2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_SKILL2() {
  var result = indent + 'PACKET_CZ_USE_SKILL2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_USE_ITEM2() {
  var result = indent + 'PACKET_CZ_USE_ITEM2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_POSTDELAY() {
  var result = indent + 'PACKET_ZC_SKILL_POSTDELAY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'DelayTM = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function SKILL_POSTDELAY() {
  var result = indent + 'SKILL_POSTDELAY {\n';
  indent += '\t';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'DelayTM = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_POSTDELAY_LIST() {
  var result = indent + 'PACKET_ZC_SKILL_POSTDELAY_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += SKILL_POSTDELAY().replace('SKILL_POSTDELAY', 'SKILL_POSTDELAY delayList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MSG_STATE_CHANGE2() {
  var result = indent + 'PACKET_ZC_MSG_STATE_CHANGE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'state = ' + reader.fetchBool() + '\n';
  result += indent + 'RemainMS = ' + reader.fetchUint32() + '\n';
  result += indent + 'val[3] = ' + reader.fetchInt32Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MILLENNIUMSHIELD() {
  var result = indent + 'PACKET_ZC_MILLENNIUMSHIELD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'num = ' + reader.fetchInt16() + '\n';
  result += indent + 'state = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILLINFO_DELETE() {
  var result = indent + 'PACKET_ZC_SKILLINFO_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_SELECT_REQUEST() {
  var result = indent + 'PACKET_ZC_SKILL_SELECT_REQUEST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'why = ' + reader.fetchInt32() + '\n';
  result += indent + 'SKIDList[] = ' + reader.fetchUint16Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SKILL_SELECT_RESPONSE() {
  var result = indent + 'PACKET_CZ_SKILL_SELECT_RESPONSE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'why = ' + reader.fetchInt32() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SIMPLE_CASH_POINT_ITEMLIST() {
  var result = indent + 'PACKET_ZC_SIMPLE_CASH_POINT_ITEMLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'CashPoint = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_ITEM().replace('PURCHASE_ITEM', 'PURCHASE_ITEM ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SIMPLE_BUY_CASH_POINT_ITEM() {
  var result = indent + 'PACKET_CZ_SIMPLE_BUY_CASH_POINT_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_QUEST_NOTIFY_EFFECT() {
  var result = indent + 'PACKET_ZC_QUEST_NOTIFY_EFFECT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'npcID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'effect = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_BLOCKING_PLAY_CANCEL() {
  var result = indent + 'PACKET_CZ_BLOCKING_PLAY_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CHARACTER_LIST() {
  var result = indent + 'CHARACTER_LIST {\n';
  indent += '\t';
  result += indent + 'dwGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'SlotIdx = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_CHARACTER_LIST() {
  var result = indent + 'PACKET_HC_CHARACTER_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CHARACTER_LIST().replace('CHARACTER_LIST', 'CHARACTER_LIST CharacterList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_HACKSH_ERROR_MSG() {
  var result = indent + 'PACKET_ZC_HACKSH_ERROR_MSG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLIENT_VERSION() {
  var result = indent + 'PACKET_CZ_CLIENT_VERSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'clientVer = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLOSE_SIMPLECASH_SHOP() {
  var result = indent + 'PACKET_CZ_CLOSE_SIMPLECASH_SHOP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ES_RESULT() {
  var result = indent + 'PACKET_ZC_ES_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'esNo = ' + reader.fetchInt16() + '\n';
  result += indent + 'esMsg = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ES_GET_LIST() {
  var result = indent + 'PACKET_CZ_ES_GET_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ES_LIST() {
  var result = indent + 'PACKET_ZC_ES_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ES_CHOOSE() {
  var result = indent + 'PACKET_CZ_ES_CHOOSE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'esNo = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ES_CANCEL() {
  var result = indent + 'PACKET_CZ_ES_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'esNo = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ES_READY() {
  var result = indent + 'PACKET_ZC_ES_READY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'esNo = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ES_GOTO() {
  var result = indent + 'PACKET_ZC_ES_GOTO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'esNo = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GROUPINFO_CHANGE_V2() {
  var result = indent + 'PACKET_CZ_GROUPINFO_CHANGE_V2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'expOption = ' + reader.fetchUint32() + '\n';
  result += indent + 'ItemPickupRule = ' + reader.fetchUint8() + '\n';
  result += indent + 'ItemDivisionRule = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_GROUPINFO_CHANGE_V2() {
  var result = indent + 'PACKET_ZC_REQ_GROUPINFO_CHANGE_V2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'expOption = ' + reader.fetchUint32() + '\n';
  result += indent + 'ItemPickupRule = ' + reader.fetchUint8() + '\n';
  result += indent + 'ItemDivisionRule = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SHORTCUT_KEY_LIST_V2() {
  var result = indent + 'PACKET_ZC_SHORTCUT_KEY_LIST_V2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 38; i++) {
    result += ShortCutKey().replace('ShortCutKey', 'ShortCutKey shortcut[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CHANGE_GROUP_MASTER() {
  var result = indent + 'PACKET_CZ_CHANGE_GROUP_MASTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_HO_PAR_CHANGE() {
  var result = indent + 'PACKET_ZC_HO_PAR_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'var = ' + reader.fetchUint16() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SEEK_PARTY() {
  var result = indent + 'PACKET_CZ_SEEK_PARTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Option = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SEEK_PARTY() {
  var result = indent + 'PACKET_ZC_SEEK_PARTY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Job = ' + appendJobName(reader.fetchUint32()) + '\n';
  result += indent + 'Level = ' + reader.fetchUint32() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'Option = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SEEK_PARTY_MEMBER() {
  var result = indent + 'PACKET_CZ_SEEK_PARTY_MEMBER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Job = ' + appendJobName(reader.fetchUint32()) + '\n';
  result += indent + 'Level = ' + reader.fetchUint32() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'Option = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SEEK_PARTY_MEMBER() {
  var result = indent + 'PACKET_ZC_SEEK_PARTY_MEMBER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Name[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Job = ' + appendJobName(reader.fetchUint32()) + '\n';
  result += indent + 'Level = ' + reader.fetchUint32() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'Option = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ES_NOTI_MYINFO() {
  var result = indent + 'PACKET_ZC_ES_NOTI_MYINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'esNo = ' + reader.fetchInt16() + '\n';
  result += indent + 'esname[54] = ' + changeToString(reader.fetchInt8Arr(54)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILLINFO_UPDATE2() {
  var result = indent + 'PACKET_ZC_SKILLINFO_UPDATE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchInt32() + '\n';
  result += indent + 'level = ' + reader.fetchInt16() + '\n';
  result += indent + 'spcost = ' + reader.fetchInt16() + '\n';
  result += indent + 'attackRange = ' + reader.fetchInt16() + '\n';
  result += indent + 'upgradable = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MSG_VALUE() {
  var result = indent + 'PACKET_ZC_MSG_VALUE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'msg = ' + changeToString(reader.fetchUint16()) + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEMLISTWIN_OPEN() {
  var result = indent + 'PACKET_ZC_ITEMLISTWIN_OPEN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_ITEMLISTWIN_RES() {
  var result = indent + 'PACKET_CZ_ITEMLISTWIN_RES {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchInt32() + '\n';
  result += indent + 'Action = ' + reader.fetchInt32() + '\n';
  result += indent + 'MaterialList = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_ENTER_CHECKBOT() {
  var result = indent + 'PACKET_CH_ENTER_CHECKBOT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'szStringInfo[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MSG_SKILL() {
  var result = indent + 'PACKET_ZC_MSG_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'MSGID = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_CHECKBOT() {
  var result = indent + 'PACKET_CH_CHECKBOT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'szStringInfo[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_CHECKBOT() {
  var result = indent + 'PACKET_HC_CHECKBOT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'img[] = ' + reader.fetchUint8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_CHECKBOT_RESULT() {
  var result = indent + 'PACKET_HC_CHECKBOT_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_BATTLE_FIELD_LIST() {
  var result = indent + 'PACKET_CZ_BATTLE_FIELD_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function BATTLE_FIELD_INFO() {
  var result = indent + 'BATTLE_FIELD_INFO {\n';
  indent += '\t';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'BattleFieldName[56] = ' + changeToString(reader.fetchInt8Arr(56)) + '\n';
  result += indent + 'JoinTeam = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLE_FIELD_LIST() {
  var result = indent + 'PACKET_ZC_BATTLE_FIELD_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Count = ' + reader.fetchInt16() + '\n';
  result += indent + 'ack_type = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += BATTLE_FIELD_INFO().replace('BATTLE_FIELD_INFO', 'BATTLE_FIELD_INFO InfoList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_JOIN_BATTLE_FIELD() {
  var result = indent + 'PACKET_CZ_JOIN_BATTLE_FIELD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'JoinTeam = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_JOIN_BATTLE_FIELD() {
  var result = indent + 'PACKET_ZC_JOIN_BATTLE_FIELD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'JoinTeam = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CANCEL_BATTLE_FIELD() {
  var result = indent + 'PACKET_CZ_CANCEL_BATTLE_FIELD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CANCEL_BATTLE_FIELD() {
  var result = indent + 'PACKET_ZC_CANCEL_BATTLE_FIELD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BATTLE_STATE_MONITOR() {
  var result = indent + 'PACKET_CZ_REQ_BATTLE_STATE_MONITOR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'PowerSwitch = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_BATTLE_STATE_MONITOR() {
  var result = indent + 'PACKET_ZC_ACK_BATTLE_STATE_MONITOR {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'PlayCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'BattleState = ' + reader.fetchInt16() + '\n';
  result += indent + 'TeamCount_A = ' + reader.fetchInt16() + '\n';
  result += indent + 'TeamCount_B = ' + reader.fetchInt16() + '\n';
  result += indent + 'MyCount = ' + reader.fetchInt16() + '\n';
  result += indent + 'JoinTeam = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLE_NOTI_START_STEP() {
  var result = indent + 'PACKET_ZC_BATTLE_NOTI_START_STEP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLE_JOIN_NOTI_DEFER() {
  var result = indent + 'PACKET_ZC_BATTLE_JOIN_NOTI_DEFER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BFNO = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BATTLE_JOIN_DISABLE_STATE() {
  var result = indent + 'PACKET_ZC_BATTLE_JOIN_DISABLE_STATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Enable = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GM_FULLSTRIP() {
  var result = indent + 'PACKET_CZ_GM_FULLSTRIP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'TargetAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_EXP() {
  var result = indent + 'PACKET_ZC_NOTIFY_EXP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'amount = ' + reader.fetchInt32() + '\n';
  result += indent + 'varID = ' + appendVarName(reader.fetchUint16()) + '\n';
  result += indent + 'expType = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY7() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY7 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY5() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY5() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DELETE_ITEM_FROM_BODY() {
  var result = indent + 'PACKET_ZC_DELETE_ITEM_FROM_BODY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'DeleteType = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'Count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_USESKILL_ACK2() {
  var result = indent + 'PACKET_ZC_USESKILL_ACK2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'property = ' + reader.fetchUint32() + '\n';
  result += indent + 'delayTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'isDisposable = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CHANGE_GROUP_MASTER() {
  var result = indent + 'PACKET_ZC_CHANGE_GROUP_MASTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'OldMasterAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'NewMasterAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PLAY_NPC_BGM() {
  var result = indent + 'PACKET_ZC_PLAY_NPC_BGM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'BgmName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DEFINE_CHECK() {
  var result = indent + 'PACKET_ZC_DEFINE_CHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PC_PURCHASE_ITEMLIST_FROMMC2() {
  var result = indent + 'PACKET_ZC_PC_PURCHASE_ITEMLIST_FROMMC2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'UniqueID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PURCHASE_ITEM_FROMMC().replace('PURCHASE_ITEM_FROMMC', 'PURCHASE_ITEM_FROMMC itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CZ_PURCHASE_ITEM_FROMMC() {
  var result = indent + 'CZ_PURCHASE_ITEM_FROMMC {\n';
  indent += '\t';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PC_PURCHASE_ITEMLIST_FROMMC2() {
  var result = indent + 'PACKET_CZ_PC_PURCHASE_ITEMLIST_FROMMC2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'UniqueID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CZ_PURCHASE_ITEM_FROMMC().replace('CZ_PURCHASE_ITEM_FROMMC', 'CZ_PURCHASE_ITEM_FROMMC itemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_BOOKING_REQ_REGISTER() {
  var result = indent + 'PACKET_CZ_PARTY_BOOKING_REQ_REGISTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += PARTY_BOOKING_DETAIL().replace('PARTY_BOOKING_DETAIL', 'PARTY_BOOKING_DETAIL RegisterInfo');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_BOOKING_ACK_REGISTER() {
  var result = indent + 'PACKET_ZC_PARTY_BOOKING_ACK_REGISTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_BOOKING_REQ_SEARCH() {
  var result = indent + 'PACKET_CZ_PARTY_BOOKING_REQ_SEARCH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Level = ' + reader.fetchInt16() + '\n';
  result += indent + 'MapID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'LastIndex = ' + reader.fetchUint32() + '\n';
  result += indent + 'ResultCount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_BOOKING_ACK_SEARCH() {
  var result = indent + 'PACKET_ZC_PARTY_BOOKING_ACK_SEARCH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'IsExistMoreResult = ' + reader.fetchBool() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PARTY_BOOKING_AD_INFO().replace('PARTY_BOOKING_AD_INFO', 'PARTY_BOOKING_AD_INFO Info[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_BOOKING_REQ_DELETE() {
  var result = indent + 'PACKET_CZ_PARTY_BOOKING_REQ_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_BOOKING_ACK_DELETE() {
  var result = indent + 'PACKET_ZC_PARTY_BOOKING_ACK_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_BOOKING_REQ_UPDATE() {
  var result = indent + 'PACKET_CZ_PARTY_BOOKING_REQ_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Job[6] = ' + appendJobName(reader.fetchInt16Arr(6)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_BOOKING_NOTIFY_INSERT() {
  var result = indent + 'PACKET_ZC_PARTY_BOOKING_NOTIFY_INSERT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += PARTY_BOOKING_AD_INFO().replace('PARTY_BOOKING_AD_INFO', 'PARTY_BOOKING_AD_INFO Info');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_BOOKING_NOTIFY_UPDATE() {
  var result = indent + 'PACKET_ZC_PARTY_BOOKING_NOTIFY_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  result += indent + 'Job[6] = ' + appendJobName(reader.fetchInt16Arr(6)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_BOOKING_NOTIFY_DELETE() {
  var result = indent + 'PACKET_ZC_PARTY_BOOKING_NOTIFY_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SIMPLE_CASH_BTNSHOW() {
  var result = indent + 'PACKET_CZ_SIMPLE_CASH_BTNSHOW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SIMPLE_CASH_BTNSHOW() {
  var result = indent + 'PACKET_ZC_SIMPLE_CASH_BTNSHOW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'show = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_HP_TO_GROUPM_R2() {
  var result = indent + 'PACKET_ZC_NOTIFY_HP_TO_GROUPM_R2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxhp = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ADD_EXCHANGE_ITEM2() {
  var result = indent + 'PACKET_ZC_ADD_EXCHANGE_ITEM2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OPEN_BUYING_STORE() {
  var result = indent + 'PACKET_ZC_OPEN_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PRODUCTINFO_IN_BUYING_STORE() {
  var result = indent + 'PRODUCTINFO_IN_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_OPEN_BUYING_STORE() {
  var result = indent + 'PACKET_CZ_REQ_OPEN_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'LimitZeny = ' + reader.fetchUint32() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  result += indent + 'storeName[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PRODUCTINFO_IN_BUYING_STORE().replace('PRODUCTINFO_IN_BUYING_STORE', 'PRODUCTINFO_IN_BUYING_STORE ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FAILED_OPEN_BUYING_STORE_TO_BUYER() {
  var result = indent + 'PACKET_ZC_FAILED_OPEN_BUYING_STORE_TO_BUYER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'total_weight = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MYITEMLIST_BUYING_STORE() {
  var result = indent + 'PACKET_ZC_MYITEMLIST_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'limitZeny = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += BUYING_STORE_ITEMLIST().replace('BUYING_STORE_ITEMLIST', 'BUYING_STORE_ITEMLIST ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BUYING_STORE_ENTRY() {
  var result = indent + 'PACKET_ZC_BUYING_STORE_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'storeName[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CLOSE_BUYING_STORE() {
  var result = indent + 'PACKET_CZ_REQ_CLOSE_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DISAPPEAR_BUYING_STORE_ENTRY() {
  var result = indent + 'PACKET_ZC_DISAPPEAR_BUYING_STORE_ENTRY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CLICK_TO_BUYING_STORE() {
  var result = indent + 'PACKET_CZ_REQ_CLICK_TO_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ITEMLIST_BUYING_STORE() {
  var result = indent + 'PACKET_ZC_ACK_ITEMLIST_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'StoreID = ' + reader.fetchUint32() + '\n';
  result += indent + 'limitZeny = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += BUYING_STORE_ITEMLIST().replace('BUYING_STORE_ITEMLIST', 'BUYING_STORE_ITEMLIST ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function TRADE_ITEM_BUYING_STORE() {
  var result = indent + 'TRADE_ITEM_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_TRADE_BUYING_STORE() {
  var result = indent + 'PACKET_CZ_REQ_TRADE_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'makerAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'StoreID = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += TRADE_ITEM_BUYING_STORE().replace('TRADE_ITEM_BUYING_STORE', 'TRADE_ITEM_BUYING_STORE ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FAILED_TRADE_BUYING_STORE_TO_BUYER() {
  var result = indent + 'PACKET_ZC_FAILED_TRADE_BUYING_STORE_TO_BUYER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_ITEM_FROM_BUYING_STORE() {
  var result = indent + 'PACKET_ZC_UPDATE_ITEM_FROM_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'limitZeny = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_DELETE_BUYING_STORE() {
  var result = indent + 'PACKET_ZC_ITEM_DELETE_BUYING_STORE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'zeny = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EL_INIT() {
  var result = indent + 'PACKET_ZC_EL_INIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchInt32() + '\n';
  result += indent + 'hp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt32() + '\n';
  result += indent + 'sp = ' + reader.fetchInt32() + '\n';
  result += indent + 'maxSP = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EL_PAR_CHANGE() {
  var result = indent + 'PACKET_ZC_EL_PAR_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'var = ' + reader.fetchUint16() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BROADCAST4() {
  var result = indent + 'PACKET_ZC_BROADCAST4 {\n';
  indent += '\t';
  result += indent + 'PakcetType = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Msgtype = ' + reader.fetchUint8() + '\n';
  result += indent + 'ColorRGB = ' + reader.fetchUint32() + '\n';
  result += indent + 'msg[] = ' + changeToString(reader.fetchInt8Arr()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_COSTUME_SPRITE_CHANGE() {
  var result = indent + 'PACKET_ZC_COSTUME_SPRITE_CHANGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'value = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_OTP_USER() {
  var result = indent + 'PACKET_AC_OTP_USER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_OTP_AUTH_REQ() {
  var result = indent + 'PACKET_CA_OTP_AUTH_REQ {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'OTPCode[7] = ' + reader.fetchInt8Arr(7) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_OTP_AUTH_ACK() {
  var result = indent + 'PACKET_AC_OTP_AUTH_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'LoginResult = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FAILED_TRADE_BUYING_STORE_TO_SELLER() {
  var result = indent + 'PACKET_ZC_FAILED_TRADE_BUYING_STORE_TO_SELLER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_SSO_LOGIN_REQa() {
  var result = indent + 'PACKET_CA_SSO_LOGIN_REQa {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'MacAddr[17] = ' + reader.fetchInt8Arr(17) + '\n';
  result += indent + 'IpAddr[15] = ' + reader.fetchInt8Arr(15) + '\n';
  result += indent + 't1[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_SSO_LOGIN_REQ() {
  var result = indent + 'PACKET_CA_SSO_LOGIN_REQ {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'Passwd[27] = ' + changeToString(reader.fetchUint8Arr(27)) + '\n';
  result += indent + 'MacAdress[17] = ' + reader.fetchInt8Arr(17) + '\n';
  result += indent + 'IP[15] = ' + reader.fetchInt8Arr(15) + '\n';
  result += indent + 't1[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_SSO_LOGIN_ACK() {
  var result = indent + 'PACKET_AC_SSO_LOGIN_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_DELETE_CHAR3_RESERVED() {
  var result = indent + 'PACKET_CH_DELETE_CHAR3_RESERVED {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_DELETE_CHAR3_RESERVED() {
  var result = indent + 'PACKET_HC_DELETE_CHAR3_RESERVED {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt32() + '\n';
  result += indent + 'DeleteReservedDate = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_DELETE_CHAR3() {
  var result = indent + 'PACKET_CH_DELETE_CHAR3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Birth[6] = ' + reader.fetchInt8Arr(6) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_DELETE_CHAR3() {
  var result = indent + 'PACKET_HC_DELETE_CHAR3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_DELETE_CHAR3_CANCEL() {
  var result = indent + 'PACKET_CH_DELETE_CHAR3_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_DELETE_CHAR3_CANCEL() {
  var result = indent + 'PACKET_HC_DELETE_CHAR3_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACCEPT2() {
  var result = indent + 'PACKET_HC_ACCEPT2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchUint16() + '\n';
  result += indent + 'NormalSlotNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'PremiumSlotNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'BillingSlotNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'ProducibleSlotNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'ValidSlotNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'm_extension[20] = ' + reader.fetchInt8Arr(20) + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CHARACTER_INFO_NEO_UNION2().replace('CHARACTER_INFO_NEO_UNION2', 'CHARACTER_INFO_NEO_UNION2 charInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SEARCH_STORE_INFO() {
  var result = indent + 'PACKET_CZ_SEARCH_STORE_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'StoreType = ' + reader.fetchUint8() + '\n';
  result += indent + 'maxPrice = ' + reader.fetchUint32() + '\n';
  result += indent + 'minPrice = ' + reader.fetchUint32() + '\n';
  result += indent + 'ItemIDListSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'CardIDListSize = ' + appendItemName(reader.fetchUint8()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ResultItemInfo() {
  var result = indent + 'ResultItemInfo {\n';
  indent += '\t';
  result += indent + 'SSI_ID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'StoreName[80] = ' + changeToString(reader.fetchInt8Arr(80)) + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'ItemType = ' + reader.fetchUint8() + '\n';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  result += indent + 'count = ' + reader.fetchUint16() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += indent + 'card1 = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'card2 = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'card3 = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'card4 = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SEARCH_STORE_INFO_ACK() {
  var result = indent + 'PACKET_ZC_SEARCH_STORE_INFO_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'IsFirstPage = ' + reader.fetchBool() + '\n';
  result += indent + 'IsNexPage = ' + reader.fetchBool() + '\n';
  result += indent + 'RemainedSearchCnt = ' + reader.fetchUint8() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ResultItemInfo().replace('ResultItemInfo', 'ResultItemInfo SSI_List[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SEARCH_STORE_INFO_FAILED() {
  var result = indent + 'PACKET_ZC_SEARCH_STORE_INFO_FAILED {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Reason = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SEARCH_STORE_INFO_NEXT_PAGE() {
  var result = indent + 'PACKET_CZ_SEARCH_STORE_INFO_NEXT_PAGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_BAN_GUILD_SSO() {
  var result = indent + 'PACKET_ZC_ACK_BAN_GUILD_SSO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'charName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'reasonDesc[40] = ' + changeToString(reader.fetchInt8Arr(40)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OPEN_SEARCH_STORE_INFO() {
  var result = indent + 'PACKET_ZC_OPEN_SEARCH_STORE_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'OpenType = ' + reader.fetchInt16() + '\n';
  result += indent + 'SearchCntMax = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLOSE_SEARCH_STORE_INFO() {
  var result = indent + 'PACKET_CZ_CLOSE_SEARCH_STORE_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SSILIST_ITEM_CLICK() {
  var result = indent + 'PACKET_CZ_SSILIST_ITEM_CLICK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'SSI_ID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SSILIST_ITEM_CLICK_ACK() {
  var result = indent + 'PACKET_ZC_SSILIST_ITEM_CLICK_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'x = ' + reader.fetchInt16() + '\n';
  result += indent + 'y = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REFUSE_LOGIN_R2() {
  var result = indent + 'PACKET_AC_REFUSE_LOGIN_R2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint32() + '\n';
  result += indent + 'blockDate[20] = ' + reader.fetchInt8Arr(20) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SEARCH_STORE_OPEN_INFO() {
  var result = indent + 'PACKET_ZC_SEARCH_STORE_OPEN_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_SELECT_ACCESSIBLE_MAPNAME() {
  var result = indent + 'PACKET_CH_SELECT_ACCESSIBLE_MAPNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'mapListNum = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_RECALL_SSO() {
  var result = indent + 'PACKET_CZ_RECALL_SSO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'aid = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REMOVE_AID_SSO() {
  var result = indent + 'PACKET_CZ_REMOVE_AID_SSO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'aid = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SE_CASHSHOP_OPEN() {
  var result = indent + 'PACKET_CZ_SE_CASHSHOP_OPEN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SE_CASHSHOP_OPEN() {
  var result = indent + 'PACKET_ZC_SE_CASHSHOP_OPEN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'cash_point = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_SE_CASH_TAB_CODE() {
  var result = indent + 'PACKET_CZ_REQ_SE_CASH_TAB_CODE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'tab_code = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CASH_ITEM_LIST() {
  var result = indent + 'CASH_ITEM_LIST {\n';
  indent += '\t';
  result += indent + 'item_id = ' + reader.fetchUint32() + '\n';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_SE_CASH_ITEM_LIST() {
  var result = indent + 'PACKET_ZC_ACK_SE_CASH_ITEM_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'item_count = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CASH_ITEM_LIST().replace('CASH_ITEM_LIST', 'CASH_ITEM_LIST items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CASH_BUY_ITEM() {
  var result = indent + 'CASH_BUY_ITEM {\n';
  indent += '\t';
  result += indent + 'item_id = ' + reader.fetchUint32() + '\n';
  result += indent + 'count = ' + reader.fetchInt32() + '\n';
  result += indent + 'tab_code = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SE_PC_BUY_CASHITEM_LIST() {
  var result = indent + 'PACKET_CZ_SE_PC_BUY_CASHITEM_LIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'item_count = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CASH_BUY_ITEM().replace('CASH_BUY_ITEM', 'CASH_BUY_ITEM items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SE_PC_BUY_CASHITEM_RESULT() {
  var result = indent + 'PACKET_ZC_SE_PC_BUY_CASHITEM_RESULT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'item_id = ' + reader.fetchUint32() + '\n';
  result += indent + 'result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SE_CASHSHOP_CLOSE() {
  var result = indent + 'PACKET_CZ_SE_CASHSHOP_CLOSE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_FALL_ENTRY4() {
  var result = indent + 'PACKET_ZC_ITEM_FALL_ENTRY4 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'type = ' + reader.fetchUint16() + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'subX = ' + reader.fetchUint8() + '\n';
  result += indent + 'subY = ' + reader.fetchUint8() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_USE_SKILL() {
  var result = indent + 'PACKET_CZ_MACRO_USE_SKILL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_USE_SKILL_TOGROUND() {
  var result = indent + 'PACKET_CZ_MACRO_USE_SKILL_TOGROUND {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'selectedLevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_REQUEST_MOVE() {
  var result = indent + 'PACKET_CZ_MACRO_REQUEST_MOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dest[3] = ' + reader.fetchUint8Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_ITEM_PICKUP() {
  var result = indent + 'PACKET_CZ_MACRO_ITEM_PICKUP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_REQUEST_ACT() {
  var result = indent + 'PACKET_CZ_MACRO_REQUEST_ACT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_GPK_DYNCODE() {
  var result = indent + 'PACKET_ZC_GPK_DYNCODE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchUint16() + '\n';
  result += indent + 'code[] = ' + reader.fetchUint8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_GPK_DYNCODE_RELOAD() {
  var result = indent + 'PACKET_CZ_GPK_DYNCODE_RELOAD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MACRO_ITEMPICKUP_FAIL() {
  var result = indent + 'PACKET_ZC_MACRO_ITEMPICKUP_FAIL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ITAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY8() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY8 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY7() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY7 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY6() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY6 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPWIN_MICROSCOPE2() {
  var result = indent + 'PACKET_ZC_EQUIPWIN_MICROSCOPE2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_WAITING_LOGIN() {
  var result = indent + 'PACKET_HC_WAITING_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'CurWaitingNum = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_WAITING_LOGIN() {
  var result = indent + 'PACKET_CH_WAITING_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'AuthCode = ' + reader.fetchInt32() + '\n';
  result += indent + 'userLevel = ' + reader.fetchUint32() + '\n';
  result += indent + 'clientType = ' + reader.fetchUint16() + '\n';
  result += indent + 'Sex = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_START_COLLECTION() {
  var result = indent + 'PACKET_ZC_START_COLLECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_TRYCOLLECTION() {
  var result = indent + 'PACKET_CZ_TRYCOLLECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_TRYCOLLECTION() {
  var result = indent + 'PACKET_ZC_TRYCOLLECTION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_SECOND_PASSWD_REQ() {
  var result = indent + 'PACKET_HC_SECOND_PASSWD_REQ {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Seed = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_SECOND_PASSWD_ACK() {
  var result = indent + 'PACKET_CH_SECOND_PASSWD_ACK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'SecondPWIdx[6] = ' + reader.fetchInt8Arr(6) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_SECOND_PASSWD_LOGIN() {
  var result = indent + 'PACKET_HC_SECOND_PASSWD_LOGIN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Seed = ' + reader.fetchUint32() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_MAKE_SECOND_PASSWD() {
  var result = indent + 'PACKET_CH_MAKE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Seed = ' + reader.fetchUint32() + '\n';
  result += indent + 'SecondPWIdx[6] = ' + reader.fetchInt8Arr(6) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_MAKE_SECOND_PASSWD() {
  var result = indent + 'PACKET_HC_MAKE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_DELETE_SECOND_PASSWD() {
  var result = indent + 'PACKET_CH_DELETE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Seed = ' + reader.fetchUint32() + '\n';
  result += indent + 'SecondPWIdx[6] = ' + reader.fetchInt8Arr(6) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_DELETE_SECOND_PASSWD() {
  var result = indent + 'PACKET_HC_DELETE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_EDIT_SECOND_PASSWD() {
  var result = indent + 'PACKET_CH_EDIT_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Seed = ' + reader.fetchUint32() + '\n';
  result += indent + 'SecondPWIdx[6] = ' + reader.fetchInt8Arr(6) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_EDIT_SECOND_PASSWD() {
  var result = indent + 'PACKET_HC_EDIT_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function CASH_ITEM_LIST2() {
  var result = indent + 'CASH_ITEM_LIST2 {\n';
  indent += '\t';
  result += indent + 'item_id = ' + reader.fetchUint16() + '\n';
  result += indent + 'price = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_SE_CASH_ITEM_LIST2() {
  var result = indent + 'PACKET_ZC_ACK_SE_CASH_ITEM_LIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'OpenIdentity = ' + reader.fetchUint32() + '\n';
  result += indent + 'item_count = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CASH_ITEM_LIST2().replace('CASH_ITEM_LIST2', 'CASH_ITEM_LIST2 ItemList[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_START() {
  var result = indent + 'PACKET_CZ_MACRO_START {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_MACRO_STOP() {
  var result = indent + 'PACKET_CZ_MACRO_STOP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_NOT_AVAILABLE_SECOND_PASSWD() {
  var result = indent + 'PACKET_CH_NOT_AVAILABLE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'SecondPWIdx[4] = ' + reader.fetchInt8Arr(4) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_NOT_AVAILABLE_SECOND_PASSWD() {
  var result = indent + 'PACKET_HC_NOT_AVAILABLE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  result += indent + 'Seed = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_AVAILABLE_SECOND_PASSWD() {
  var result = indent + 'PACKET_CH_AVAILABLE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_AVAILABLE_SECOND_PASSWD() {
  var result = indent + 'PACKET_HC_AVAILABLE_SECOND_PASSWD {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_ENTRY3() {
  var result = indent + 'PACKET_ZC_SKILL_ENTRY3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'creatorAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchUint8()) + '\n';
  result += indent + 'RadiusRange = ' + reader.fetchInt8() + '\n';
  result += indent + 'isVisible = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ACT3() {
  var result = indent + 'PACKET_ZC_NOTIFY_ACT3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'startTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'attackMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'attackedMT = ' + reader.fetchInt32() + '\n';
  result += indent + 'damage = ' + reader.fetchInt32() + '\n';
  result += indent + 'IsSPDamage = ' + reader.fetchUint8() + '\n';
  result += indent + 'count = ' + reader.fetchInt16() + '\n';
  result += indent + 'action = ' + reader.fetchUint8() + '\n';
  result += indent + 'leftDamage = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_SCHEDULER_CASHITEM() {
  var result = indent + 'PACKET_CZ_REQ_SCHEDULER_CASHITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PERSONAL_INFOMATION() {
  var result = indent + 'PACKET_ZC_PERSONAL_INFOMATION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Exp = ' + reader.fetchInt16() + '\n';
  result += indent + 'Death = ' + reader.fetchInt16() + '\n';
  result += indent + 'Drop = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += DETAIL_EXP_INFO().replace('DETAIL_EXP_INFO', 'DETAIL_EXP_INFO DetailInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN5() {
  var result = indent + 'PACKET_CA_LOGIN5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[51] = ' + changeToString(reader.fetchUint8Arr(51)) + '\n';
  result += indent + 'Passwd[51] = ' + changeToString(reader.fetchUint8Arr(51)) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STOPMOVE_FORCE() {
  var result = indent + 'PACKET_ZC_STOPMOVE_FORCE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FAILED_GET_ITEM_FROM_ZONEDA() {
  var result = indent + 'PACKET_ZC_FAILED_GET_ITEM_FROM_ZONEDA {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SPIRITS_ATTRIBUTE() {
  var result = indent + 'PACKET_ZC_SPIRITS_ATTRIBUTE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'SpritsType = ' + reader.fetchInt16() + '\n';
  result += indent + 'Num = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_WEAR_EQUIP_ACK2() {
  var result = indent + 'PACKET_ZC_REQ_WEAR_EQUIP_ACK2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint16() + '\n';
  result += indent + 'wItemSpriteNumber = ' + reader.fetchUint16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REQ_TAKEOFF_EQUIP_ACK2() {
  var result = indent + 'PACKET_ZC_REQ_TAKEOFF_EQUIP_ACK2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FASTMOVE() {
  var result = indent + 'PACKET_ZC_FASTMOVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'targetXpos = ' + reader.fetchInt16() + '\n';
  result += indent + 'targetYpos = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SE_CASHSHOP_UPDATE() {
  var result = indent + 'PACKET_ZC_SE_CASHSHOP_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'cash_point = ' + reader.fetchInt32() + '\n';
  result += indent + 'free_point = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_REQ_CHANGE_CHARACTER_SLOT() {
  var result = indent + 'PACKET_CH_REQ_CHANGE_CHARACTER_SLOT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'beforeCharNum = ' + reader.fetchInt16() + '\n';
  result += indent + 'AfterCharNum = ' + reader.fetchInt16() + '\n';
  result += indent + 'CurChrSlotCnt = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACK_CHANGE_CHARACTER_SLOT() {
  var result = indent + 'PACKET_HC_ACK_CHANGE_CHARACTER_SLOT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Reason = ' + reader.fetchInt16() + '\n';
  result += indent + 'AfterChrSlotCnt = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CLEAR_DIALOG() {
  var result = indent + 'PACKET_ZC_CLEAR_DIALOG {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ENTRY_QUEUE_APPLY() {
  var result = indent + 'PACKET_CZ_REQ_ENTRY_QUEUE_APPLY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ApplyType = ' + reader.fetchInt16() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ENTRY_QUEUE_APPLY() {
  var result = indent + 'PACKET_ZC_ACK_ENTRY_QUEUE_APPLY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ENTRY_QUEUE_APPLY() {
  var result = indent + 'PACKET_ZC_NOTIFY_ENTRY_QUEUE_APPLY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Ranking = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ENTRY_QUEUE_CANCEL() {
  var result = indent + 'PACKET_CZ_REQ_ENTRY_QUEUE_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_ENTRY_QUEUE_CANCEL() {
  var result = indent + 'PACKET_ZC_ACK_ENTRY_QUEUE_CANCEL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_ENTRY_QUEUE_ADMISSION() {
  var result = indent + 'PACKET_ZC_NOTIFY_ENTRY_QUEUE_ADMISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REPLY_ENTRY_QUEUE_ADMISSION() {
  var result = indent + 'PACKET_CZ_REPLY_ENTRY_QUEUE_ADMISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REPLY_ACK_ENTRY_QUEUE_ADMISSION() {
  var result = indent + 'PACKET_ZC_REPLY_ACK_ENTRY_QUEUE_ADMISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_LOBBY_ADMISSION() {
  var result = indent + 'PACKET_ZC_NOTIFY_LOBBY_ADMISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'LobbyName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REPLY_LOBBY_ADMISSION() {
  var result = indent + 'PACKET_CZ_REPLY_LOBBY_ADMISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'LobbyName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_REPLY_ACK_LOBBY_ADMISSION() {
  var result = indent + 'PACKET_ZC_REPLY_ACK_LOBBY_ADMISSION {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'LobbyName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NAVIGATION_ACTIVE() {
  var result = indent + 'PACKET_ZC_NAVIGATION_ACTIVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Type = ' + reader.fetchUint8() + '\n';
  result += indent + 'SetType = ' + reader.fetchUint8() + '\n';
  result += indent + 'Hide = ' + reader.fetchBool() + '\n';
  result += indent + 'MapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'sprIndex = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_UPDATE_CHARINFO() {
  var result = indent + 'PACKET_HC_UPDATE_CHARINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CHARACTER_INFO_NEO_UNION3().replace('CHARACTER_INFO_NEO_UNION3', 'CHARACTER_INFO_NEO_UNION3 charInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_SHUTDOWN_INFO() {
  var result = indent + 'PACKET_AC_SHUTDOWN_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Time = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_REQ_REGISTER() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_REQ_REGISTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PARTY_RECRUIT_DETAIL().replace('PARTY_RECRUIT_DETAIL', 'PARTY_RECRUIT_DETAIL regsiterInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_ACK_REGISTER() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_ACK_REGISTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_REQ_SEARCH() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_REQ_SEARCH {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Level = ' + reader.fetchInt16() + '\n';
  result += indent + 'LastIndex = ' + reader.fetchUint32() + '\n';
  result += indent + 'ResultCount = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_REQ_DELETE() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_REQ_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_ACK_DELETE() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_ACK_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_REQ_UPDATE() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_REQ_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Notice[37] = ' + reader.fetchInt8Arr(37) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PARTY_RECRUIT_AD_INFO() {
  var result = indent + 'PARTY_RECRUIT_AD_INFO {\n';
  indent += '\t';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  result += indent + 'ExpireTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += PARTY_RECRUIT_DETAIL().replace('PARTY_RECRUIT_DETAIL', 'PARTY_RECRUIT_DETAIL Detail');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_NOTIFY_INSERT() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_NOTIFY_INSERT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += PARTY_RECRUIT_AD_INFO().replace('PARTY_RECRUIT_AD_INFO', 'PARTY_RECRUIT_AD_INFO Info');
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_NOTIFY_UPDATE() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_NOTIFY_UPDATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  result += indent + 'Notice[37] = ' + reader.fetchInt8Arr(37) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_NOTIFY_DELETE() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_NOTIFY_DELETE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_ADD_FILTERLINGLIST() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_ADD_FILTERLINGLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_SUB_FILTERLINGLIST() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_SUB_FILTERLINGLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_REQ_VOLUNTEER() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_REQ_VOLUNTEER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_VOLUNTEER_INFO() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_VOLUNTEER_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Job = ' + appendJobName(reader.fetchInt32()) + '\n';
  result += indent + 'Level = ' + reader.fetchInt16() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_SHOW_EQUIPMENT() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_SHOW_EQUIPMENT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'TargetGID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_RECALL_COST() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_RECALL_COST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Money = ' + reader.fetchInt32() + '\n';
  result += indent + 'mapName[16] = ' + changeToString(reader.fetchInt8Arr(16)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_ACK_RECALL() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_ACK_RECALL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_FAILED_RECALL() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_FAILED_RECALL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'CallerAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Reason = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_REFUSE_VOLUNTEER() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_REFUSE_VOLUNTEER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'REFUSE_AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_REFUSE_VOLUNTEER() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_REFUSE_VOLUNTEER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_PARTY_RECRUIT_CANCEL_VOLUNTEER() {
  var result = indent + 'PACKET_CZ_PARTY_RECRUIT_CANCEL_VOLUNTEER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_REQ_CHANGE_CHARACTERNAME() {
  var result = indent + 'PACKET_CH_REQ_CHANGE_CHARACTERNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwGID = ' + reader.fetchUint32() + '\n';
  result += indent + 'szCharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACK_CHANGE_CHARACTERNAME() {
  var result = indent + 'PACKET_HC_ACK_CHANGE_CHARACTERNAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'dwResult = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EFST_SET_ENTER() {
  var result = indent + 'PACKET_ZC_EFST_SET_ENTER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'hEFST = ' + reader.fetchInt16() + '\n';
  result += indent + 'Time = ' + reader.fetchUint32() + '\n';
  result += indent + 'Val1 = ' + reader.fetchInt32() + '\n';
  result += indent + 'Val2 = ' + reader.fetchInt32() + '\n';
  result += indent + 'Val3 = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_INVENTORY_ITEMLIST_NORMAL() {
  var result = indent + 'PACKET_ZC_INVENTORY_ITEMLIST_NORMAL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_NORMAL_ITEM().replace('ITEMLIST_NORMAL_ITEM', 'ITEMLIST_NORMAL_ITEM Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_INVENTORY_ITEMLIST_EQUIP() {
  var result = indent + 'PACKET_ZC_INVENTORY_ITEMLIST_EQUIP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM().replace('ITEMLIST_EQUIP_ITEM', 'ITEMLIST_EQUIP_ITEM Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_INVENTORY_TAB() {
  var result = indent + 'PACKET_CZ_INVENTORY_TAB {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'NORMALorPRIVATE = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_INVENTORY_TAB() {
  var result = indent + 'PACKET_ZC_INVENTORY_TAB {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'NORMALorPRIVATE = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_CANCEL_VOLUNTEER() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_CANCEL_VOLUNTEER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_ENTRY_QUEUE_RANKING() {
  var result = indent + 'PACKET_CZ_REQ_ENTRY_QUEUE_RANKING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'EntryQueueName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_ADD_FILTERLINGLIST() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_ADD_FILTERLINGLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_SUB_FILTERLINGLIST() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_SUB_FILTERLINGLIST {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PREMIUM_CAMPAIGN_INFO() {
  var result = indent + 'PREMIUM_CAMPAIGN_INFO {\n';
  indent += '\t';
  result += indent + 'Grade = ' + reader.fetchInt16() + '\n';
  result += indent + 'Exp = ' + reader.fetchFloat() + '\n';
  result += indent + 'Death = ' + reader.fetchFloat() + '\n';
  result += indent + 'Drp = ' + reader.fetchFloat() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PREMIUM_CAMPAIGN_INFO() {
  var result = indent + 'PACKET_ZC_PREMIUM_CAMPAIGN_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Count = ' + reader.fetchInt16() + '\n';
  result += indent + 'PremiumValue = ' + reader.fetchUint32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += PREMIUM_CAMPAIGN_INFO().replace('PREMIUM_CAMPAIGN_INFO', 'PREMIUM_CAMPAIGN_INFO CampainInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ENTRY_QUEUE_INIT() {
  var result = indent + 'PACKET_ZC_ENTRY_QUEUE_INIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_NEWENTRY7() {
  var result = indent + 'PACKET_ZC_NOTIFY_NEWENTRY7 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt32() + '\n';
  result += indent + 'HP = ' + reader.fetchInt32() + '\n';
  result += indent + 'isBoss = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_PARTY_NAME() {
  var result = indent + 'PACKET_CZ_REQ_PARTY_NAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'PartyID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_PARTY_NAME() {
  var result = indent + 'PACKET_ZC_ACK_PARTY_NAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PartyID = ' + reader.fetchUint32() + '\n';
  result += indent + 'szPartyName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_GUILD_NAME() {
  var result = indent + 'PACKET_CZ_REQ_GUILD_NAME {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GuildID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_MOVEENTRY9() {
  var result = indent + 'PACKET_ZC_NOTIFY_MOVEENTRY9 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'moveStartTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'MoveData[6] = ' + reader.fetchUint8Arr(6) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt32() + '\n';
  result += indent + 'HP = ' + reader.fetchInt32() + '\n';
  result += indent + 'isBoss = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_STANDENTRY8() {
  var result = indent + 'PACKET_ZC_NOTIFY_STANDENTRY8 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'objecttype = ' + reader.fetchUint8() + '\n';
  result += indent + 'GID = ' + reader.fetchUint32() + '\n';
  result += indent + 'speed = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodyState = ' + reader.fetchInt16() + '\n';
  result += indent + 'healthState = ' + reader.fetchInt16() + '\n';
  result += indent + 'effectState = ' + reader.fetchInt32() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'weapon = ' + reader.fetchInt32() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'headDir = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'GUID = ' + reader.fetchUint32() + '\n';
  result += indent + 'GEmblemVer = ' + reader.fetchInt16() + '\n';
  result += indent + 'honor = ' + reader.fetchInt16() + '\n';
  result += indent + 'virtue = ' + reader.fetchInt32() + '\n';
  result += indent + 'isPKModeON = ' + reader.fetchBool() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  result += indent + 'PosDir[3] = ' + reader.fetchUint8Arr(3) + '\n';
  result += indent + 'xSize = ' + reader.fetchUint8() + '\n';
  result += indent + 'ySize = ' + reader.fetchUint8() + '\n';
  result += indent + 'state = ' + reader.fetchUint8() + '\n';
  result += indent + 'clevel = ' + reader.fetchInt16() + '\n';
  result += indent + 'font = ' + reader.fetchInt16() + '\n';
  result += indent + 'maxHP = ' + reader.fetchInt32() + '\n';
  result += indent + 'HP = ' + reader.fetchInt32() + '\n';
  result += indent + 'isBoss = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_JOIN_GUILD2() {
  var result = indent + 'PACKET_CZ_REQ_JOIN_GUILD2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PRNPC_STATE() {
  var result = indent + 'PACKET_ZC_PRNPC_STATE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Winner = ' + reader.fetchUint8() + '\n';
  result += indent + 'Point = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_CANCEL_VOLUNTEER_TO_PM() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_CANCEL_VOLUNTEER_TO_PM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_MERGE_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_MERGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'item_index = ' + reader.fetchUint16() + '\n';
  result += indent + 'item_count = ' + reader.fetchUint16() + '\n';
  result += indent + 'Result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_MAKE_CHAR_NOT_STATS() {
  var result = indent + 'PACKET_CH_MAKE_CHAR_NOT_STATS {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'name[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'CharNum = ' + reader.fetchUint8() + '\n';
  result += indent + 'headPal = ' + reader.fetchInt16() + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PARTY_RECRUIT_REFUSE_VOLUNTEER_TO_PM() {
  var result = indent + 'PACKET_ZC_PARTY_RECRUIT_REFUSE_VOLUNTEER_TO_PM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PM_AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_WAIT_DIALOG2() {
  var result = indent + 'PACKET_ZC_WAIT_DIALOG2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CANCEL_MERGE_ITEM() {
  var result = indent + 'PACKET_CZ_CANCEL_MERGE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_HP_INFO() {
  var result = indent + 'PACKET_ZC_HP_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'HP = ' + reader.fetchInt32() + '\n';
  result += indent + 'MaxHP = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BEFORE_WORLD_INFO() {
  var result = indent + 'PACKET_CZ_REQ_BEFORE_WORLD_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_BEFORE_WORLD_INFO() {
  var result = indent + 'PACKET_ZC_ACK_BEFORE_WORLD_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'WorldName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'CharName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function ALL_QUEST_LIST2_INFO() {
  var result = indent + 'ALL_QUEST_LIST2_INFO {\n';
  indent += '\t';
  result += indent + 'questID = ' + reader.fetchUint32() + '\n';
  result += indent + 'active = ' + reader.fetchBool() + '\n';
  result += indent + 'quest_svrTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'quest_endTime = ' + reader.fetchInt32() + '\n';
  result += indent + 'hunting_count = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ALL_QUEST_LIST2() {
  var result = indent + 'PACKET_ZC_ALL_QUEST_LIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'QuestCount = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ALL_QUEST_LIST2_INFO().replace('ALL_QUEST_LIST2_INFO', 'ALL_QUEST_LIST2_INFO QuestInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PERSONAL_INFOMATION2() {
  var result = indent + 'PACKET_ZC_PERSONAL_INFOMATION2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Exp = ' + reader.fetchInt32() + '\n';
  result += indent + 'Death = ' + reader.fetchInt32() + '\n';
  result += indent + 'Drop = ' + reader.fetchInt32() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += DETAIL_EXP_INFO2().replace('DETAIL_EXP_INFO2', 'DETAIL_EXP_INFO2 DatailInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_RANKING() {
  var result = indent + 'PACKET_CZ_REQ_RANKING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'RankingType = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_RANKING() {
  var result = indent + 'PACKET_ZC_ACK_RANKING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'RankingType = ' + reader.fetchInt16() + '\n';
  for (var i = 0; i < 10; i++) {
    result += indent + 'CharName[' + i + '][24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  }
  result += indent + 'Point[10] = ' + reader.fetchInt32Arr(10) + '\n';
  result += indent + 'myPoint = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_UPDATE_RANKING_POINT() {
  var result = indent + 'PACKET_ZC_UPDATE_RANKING_POINT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'RankingType = ' + reader.fetchInt16() + '\n';
  result += indent + 'Point = ' + reader.fetchInt32() + '\n';
  result += indent + 'TotalPoint = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_SELECTCART() {
  var result = indent + 'PACKET_CZ_SELECTCART {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Identity = ' + reader.fetchInt32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_PERSONAL_INFOMATION_CHN() {
  var result = indent + 'PACKET_ZC_PERSONAL_INFOMATION_CHN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'Exp = ' + reader.fetchInt16() + '\n';
  result += indent + 'Death = ' + reader.fetchInt16() + '\n';
  result += indent + 'Drop = ' + reader.fetchInt16() + '\n';
  result += indent + 'ActivityRate = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += DETAIL_EXP_INFO2().replace('DETAIL_EXP_INFO2', 'DETAIL_EXP_INFO2 DatailInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_FATIGUE_CHN() {
  var result = indent + 'PACKET_ZC_FATIGUE_CHN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Level = ' + reader.fetchUint8() + '\n';
  result += indent + 'TotalPlayTime = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MSG_STATE_CHANGE3() {
  var result = indent + 'PACKET_ZC_MSG_STATE_CHANGE3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'state = ' + reader.fetchBool() + '\n';
  result += indent + 'MaxMS = ' + reader.fetchUint32() + '\n';
  result += indent + 'RemainMS = ' + reader.fetchUint32() + '\n';
  result += indent + 'val[3] = ' + reader.fetchInt32Arr(3) + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EFST_SET_ENTER2() {
  var result = indent + 'PACKET_ZC_EFST_SET_ENTER2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'hEFST = ' + reader.fetchInt16() + '\n';
  result += indent + 'MaxMS = ' + reader.fetchUint32() + '\n';
  result += indent + 'Time = ' + reader.fetchUint32() + '\n';
  result += indent + 'Val1 = ' + reader.fetchInt32() + '\n';
  result += indent + 'Val2 = ' + reader.fetchInt32() + '\n';
  result += indent + 'Val3 = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function tagSkillPostDelay() {
  var result = indent + 'tagSkillPostDelay {\n';
  indent += '\t';
  result += indent + 'SKID = ' + appendSkillName(reader.fetchUint16()) + '\n';
  result += indent + 'MaxDelayTM = ' + reader.fetchUint32() + '\n';
  result += indent + 'DelayTM = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_POSTDELAY_LIST2() {
  var result = indent + 'PACKET_ZC_SKILL_POSTDELAY_LIST2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += tagSkillPostDelay().replace('tagSkillPostDelay', 'tagSkillPostDelay PostDelay[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_SHUTDOWN_NOTIFY() {
  var result = indent + 'PACKET_AC_SHUTDOWN_NOTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Time = ' + reader.fetchInt32() + '\n';
  result += indent + 'ServerTime = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_LOGIN6() {
  var result = indent + 'PACKET_CA_LOGIN6 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Version = ' + reader.fetchUint32() + '\n';
  result += indent + 'ID[24] = ' + changeToString(reader.fetchUint8Arr(24)) + '\n';
  result += indent + 'PasswdMD5[32] = ' + reader.fetchUint8Arr(32) + '\n';
  result += indent + 'clienttype = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_CLAN_CONNECTINFO() {
  var result = indent + 'PACKET_ZC_NOTIFY_CLAN_CONNECTINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'NumConnect = ' + reader.fetchUint16() + '\n';
  result += indent + 'NumTotal = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_CLAN_LEAVE() {
  var result = indent + 'PACKET_ZC_ACK_CLAN_LEAVE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CLANINFO() {
  var result = indent + 'PACKET_ZC_CLANINFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'EmblemNum = ' + reader.fetchInt32() + '\n';
  result += indent + 'ClanName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'Mastername[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'ManageMap[16] = ' + reader.fetchInt8Arr(16) + '\n';
  result += indent + 'Num_AllyClan = ' + reader.fetchUint8() + '\n';
  result += indent + 'Num_HostileClan = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQ_NEW_USER() {
  var result = indent + 'PACKET_AC_REQ_NEW_USER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CA_ACK_NEW_USER() {
  var result = indent + 'PACKET_CA_ACK_NEW_USER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Sex = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_CLAN_CHAT() {
  var result = indent + 'PACKET_CZ_CLAN_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'chat[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_CLAN_CHAT() {
  var result = indent + 'PACKET_ZC_NOTIFY_CLAN_CHAT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'charName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'chat[] = ' + reader.fetchInt8Arr() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ITEM_PICKUP_ACK_V5() {
  var result = indent + 'PACKET_ZC_ITEM_PICKUP_ACK_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Index = ' + reader.fetchUint16() + '\n';
  result += indent + 'count = ' + reader.fetchUint16() + '\n';
  result += indent + 'ITID = ' + appendItemName(reader.fetchUint16()) + '\n';
  result += indent + 'IsIdentified = ' + reader.fetchBool() + '\n';
  result += indent + 'IsDamaged = ' + reader.fetchBool() + '\n';
  result += indent + 'refiningLevel = ' + reader.fetchUint8() + '\n';
  result += EQUIPSLOTINFO().replace('EQUIPSLOTINFO', 'EQUIPSLOTINFO slot');
  result += indent + 'location = ' + reader.fetchUint32() + '\n';
  result += indent + 'type = ' + reader.fetchUint8() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  result += indent + 'HireExpireDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'bindOnEquipType = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_INVENTORY_ITEMLIST_NORMAL_V5() {
  var result = indent + 'PACKET_ZC_INVENTORY_ITEMLIST_NORMAL_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM().replace('ITEMLIST_EQUIP_ITEM', 'ITEMLIST_EQUIP_ITEM Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_INVENTORY_ITEMLIST_EQUIP_V5() {
  var result = indent + 'PACKET_ZC_INVENTORY_ITEMLIST_EQUIP_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM2().replace('ITEMLIST_EQUIP_ITEM2', 'ITEMLIST_EQUIP_ITEM2 Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_ITEMLIST_NORMAL_V5() {
  var result = indent + 'PACKET_ZC_CART_ITEMLIST_NORMAL_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM().replace('ITEMLIST_EQUIP_ITEM', 'ITEMLIST_EQUIP_ITEM Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_CART_ITEMLIST_EQUIP_V5() {
  var result = indent + 'PACKET_ZC_CART_ITEMLIST_EQUIP_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM2().replace('ITEMLIST_EQUIP_ITEM2', 'ITEMLIST_EQUIP_ITEM2 Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_ITEMLIST_NORMAL_V5() {
  var result = indent + 'PACKET_ZC_STORE_ITEMLIST_NORMAL_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM().replace('ITEMLIST_EQUIP_ITEM', 'ITEMLIST_EQUIP_ITEM Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_STORE_ITEMLIST_EQUIP_V5() {
  var result = indent + 'PACKET_ZC_STORE_ITEMLIST_EQUIP_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += ITEMLIST_EQUIP_ITEM().replace('ITEMLIST_EQUIP_ITEM', 'ITEMLIST_EQUIP_ITEM Items[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_EQUIPWIN_MICROSCOPE_V5() {
  var result = indent + 'PACKET_ZC_EQUIPWIN_MICROSCOPE_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Length = ' + reader.fetchInt16() + '\n';
  result += indent + 'characterName[24] = ' + changeToString(reader.fetchInt8Arr(24)) + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt16()) + '\n';
  result += indent + 'head = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory2 = ' + reader.fetchInt16() + '\n';
  result += indent + 'accessory3 = ' + reader.fetchInt16() + '\n';
  result += indent + 'robe = ' + reader.fetchInt16() + '\n';
  result += indent + 'headpalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'bodypalette = ' + reader.fetchInt16() + '\n';
  result += indent + 'sex = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_WEAR_EQUIP_V5() {
  var result = indent + 'PACKET_CZ_REQ_WEAR_EQUIP_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_WEAR_EQUIP_V5() {
  var result = indent + 'PACKET_ZC_ACK_WEAR_EQUIP_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint32() + '\n';
  result += indent + 'wItemSpriteNumber = ' + reader.fetchUint16() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_TAKEOFF_EQUIP_V5() {
  var result = indent + 'PACKET_ZC_ACK_TAKEOFF_EQUIP_V5 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'index = ' + reader.fetchUint16() + '\n';
  result += indent + 'wearLocation = ' + reader.fetchUint32() + '\n';
  result += indent + 'result = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_MAPPROPERTY_R2() {
  var result = indent + 'PACKET_ZC_MAPPROPERTY_R2 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'type = ' + reader.fetchInt16() + '\n';
  result += indent + 'NotifyPropertyBits = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_REQ_CHARINFO_PER_PAGE() {
  var result = indent + 'PACKET_CH_REQ_CHARINFO_PER_PAGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'SeqNum = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_ACK_CHARINFO_PER_PAGE() {
  var result = indent + 'PACKET_HC_ACK_CHARINFO_PER_PAGE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  for (var i = 0; !reader.atEnd(); i++) {
    result += CHARACTER_INFO_NEO_UNION3().replace('CHARACTER_INFO_NEO_UNION3', 'CHARACTER_INFO_NEO_UNION3 charInfo[' + i + ']');
  }
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_QUEUE_ORDER() {
  var result = indent + 'PACKET_HC_QUEUE_ORDER {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchUint16() + '\n';
  result += indent + 'm_AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'm_QueueOrder = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_SKILL_ENTRY4() {
  var result = indent + 'PACKET_ZC_SKILL_ENTRY4 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'creatorAID = ' + reader.fetchUint32() + '\n';
  result += indent + 'xPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'yPos = ' + reader.fetchInt16() + '\n';
  result += indent + 'job = ' + appendJobName(reader.fetchInt32()) + '\n';
  result += indent + 'RadiusRange = ' + reader.fetchInt8() + '\n';
  result += indent + 'isVisible = ' + reader.fetchBool() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_HC_CHARLIST_NOTIFY() {
  var result = indent + 'PACKET_HC_CHARLIST_NOTIFY {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'TotalCnt = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CH_CHARLIST_REQ() {
  var result = indent + 'PACKET_CH_CHARLIST_REQ {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REQ_MOBILE_OTP() {
  var result = indent + 'PACKET_AC_REQ_MOBILE_OTP {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_DISPATCH_TIMING_INFO_CHN() {
  var result = indent + 'PACKET_ZC_DISPATCH_TIMING_INFO_CHN {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Balance = ' + reader.fetchUint32() + '\n';
  result += indent + 'Effective_dTime = ' + reader.fetchUint32() + '\n';
  result += indent + 'Reason = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_AC_REFUSE_LOGIN3() {
  var result = indent + 'PACKET_AC_REFUSE_LOGIN3 {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ErrorCode = ' + reader.fetchUint8() + '\n';
  result += indent + 'BlockedReaminSEC = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_BANKING_CHECK() {
  var result = indent + 'PACKET_ZC_BANKING_CHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Money = ' + reader.fetchInt64() + '\n';
  result += indent + 'Reason = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BANKING_DEPOSIT() {
  var result = indent + 'PACKET_CZ_REQ_BANKING_DEPOSIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Money = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_BANKING_DEPOSIT() {
  var result = indent + 'PACKET_ZC_ACK_BANKING_DEPOSIT {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Reason = ' + reader.fetchInt16() + '\n';
  result += indent + 'Money = ' + reader.fetchInt64() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BANKING_WITHDRAW() {
  var result = indent + 'PACKET_CZ_REQ_BANKING_WITHDRAW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'Money = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_BANKING_WITHDRAW() {
  var result = indent + 'PACKET_ZC_ACK_BANKING_WITHDRAW {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Reason = ' + reader.fetchInt16() + '\n';
  result += indent + 'Money = ' + reader.fetchInt64() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_BANKING_CHECK() {
  var result = indent + 'PACKET_CZ_REQ_BANKING_CHECK {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_CASH_BARGAIN_SALE_ITEM_INFO() {
  var result = indent + 'PACKET_CZ_REQ_CASH_BARGAIN_SALE_ITEM_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'PacketLength = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_CASH_BARGAIN_SALE_ITEM_INFO() {
  var result = indent + 'PACKET_ZC_ACK_CASH_BARGAIN_SALE_ITEM_INFO {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  result += indent + 'ItemID = ' + reader.fetchUint16() + '\n';
  result += indent + 'Price = ' + reader.fetchInt32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_APPLY_BARGAIN_SALE_ITEM() {
  var result = indent + 'PACKET_CZ_REQ_APPLY_BARGAIN_SALE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ItemID = ' + reader.fetchUint16() + '\n';
  result += indent + 'Count = ' + reader.fetchInt32() + '\n';
  result += indent + 'StartDate = ' + reader.fetchInt32() + '\n';
  result += indent + 'SellingTime = ' + reader.fetchUint8() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_APPLY_BARGAIN_SALE_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_APPLY_BARGAIN_SALE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_REQ_REMOVE_BARGAIN_SALE_ITEM() {
  var result = indent + 'PACKET_CZ_REQ_REMOVE_BARGAIN_SALE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  result += indent + 'ItemID = ' + reader.fetchUint16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_ACK_REMOVE_BARGAIN_SALE_ITEM() {
  var result = indent + 'PACKET_ZC_ACK_REMOVE_BARGAIN_SALE_ITEM {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'Result = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_BARGAIN_SALE_SELLING() {
  var result = indent + 'PACKET_ZC_NOTIFY_BARGAIN_SALE_SELLING {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ItemID = ' + reader.fetchUint16() + '\n';
  result += indent + 'TabCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_NOTIFY_BARGAIN_SALE_CLOSE() {
  var result = indent + 'PACKET_ZC_NOTIFY_BARGAIN_SALE_CLOSE {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'ItemID = ' + reader.fetchUint16() + '\n';
  result += indent + 'TabCode = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_CZ_OPEN_BARGAIN_SALE_TOOL() {
  var result = indent + 'PACKET_CZ_OPEN_BARGAIN_SALE_TOOL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  result += indent + 'AID = ' + reader.fetchUint32() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
function PACKET_ZC_OPEN_BARGAIN_SALE_TOOL() {
  var result = indent + 'PACKET_ZC_OPEN_BARGAIN_SALE_TOOL {\n';
  indent += '\t';
  result += indent + 'PacketID = ' + reader.fetchInt16() + '\n';
  indent = indent.slice(0, -1);
  result += indent + '}\n';
  return result;
}
