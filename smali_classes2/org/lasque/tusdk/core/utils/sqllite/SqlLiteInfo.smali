.class public Lorg/lasque/tusdk/core/utils/sqllite/SqlLiteInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/SqlLiteInfo;->setInfoWithCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/sqllite/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setInfoWithCursor(Landroid/database/Cursor;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
