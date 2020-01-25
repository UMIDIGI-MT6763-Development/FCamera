.class public Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static getCursorIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;->getCursorIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;->getCursorIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;->getCursorIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
