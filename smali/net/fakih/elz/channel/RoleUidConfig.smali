.class public Lnet/fakih/elz/channel/RoleUidConfig;
.super Ljava/lang/Object;

.method public static getUidByPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :ret_null

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :ret_null

    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    move-result v0

    # ===== SIMBOL =====
    const/16 v1, 0x2606   # ☆
    if-eq v0, v1, :uid_user1

    const/16 v1, 0x25a1   # □
    if-eq v0, v1, :uid_user2

    const/16 v1, 0x25cb   # ○
    if-eq v0, v1, :uid_user3

    # ===== MATA UANG =====
    const/16 v1, 0x20ac   # €
    if-eq v0, v1, :uid_user4

    const/16 v1, 0x00a3   # £
    if-eq v0, v1, :uid_user5

    const/16 v1, 0x00a5   # ¥
    if-eq v0, v1, :uid_user6

    const/16 v1, 0x20a9   # ₩
    if-eq v0, v1, :uid_user7

    # ===== ANGKA 1–9 =====
    const/16 v1, 0x31
    if-eq v0, v1, :uid_user8
    const/16 v1, 0x32
    if-eq v0, v1, :uid_user9
    const/16 v1, 0x33
    if-eq v0, v1, :uid_user10
    const/16 v1, 0x34
    if-eq v0, v1, :uid_user11
    const/16 v1, 0x35
    if-eq v0, v1, :uid_user12
    const/16 v1, 0x36
    if-eq v0, v1, :uid_user13
    const/16 v1, 0x37
    if-eq v0, v1, :uid_user14
    const/16 v1, 0x38
    if-eq v0, v1, :uid_user15
    const/16 v1, 0x39
    if-eq v0, v1, :uid_user16

    goto :ret_null

    :uid_user1
    const-string v0, "UID-USER1"
    return-object v0

    :uid_user2
    const-string v0, "UID-USER2"
    return-object v0

    :uid_user3
    const-string v0, "UID-USER3"
    return-object v0

    :uid_user4
    const-string v0, "UID-USER4"
    return-object v0

    :uid_user5
    const-string v0, "UID-USER5"
    return-object v0

    :uid_user6
    const-string v0, "UID-USER6"
    return-object v0

    :uid_user7
    const-string v0, "UID-USER7"
    return-object v0

    :uid_user8
    const-string v0, "UID-USER8"
    return-object v0

    :uid_user9
    const-string v0, "UID-USER9"
    return-object v0

    :uid_user10
    const-string v0, "UID-USER10"
    return-object v0

    :uid_user11
    const-string v0, "UID-USER11"
    return-object v0

    :uid_user12
    const-string v0, "UID-USER12"
    return-object v0

    :uid_user13
    const-string v0, "UID-USER13"
    return-object v0

    :uid_user14
    const-string v0, "UID-USER14"
    return-object v0

    :uid_user15
    const-string v0, "UID-USER15"
    return-object v0

    :uid_user16
    const-string v0, "UID-USER16"
    return-object v0

    :ret_null
    const/4 v0, 0x0
    return-object v0
.end method
