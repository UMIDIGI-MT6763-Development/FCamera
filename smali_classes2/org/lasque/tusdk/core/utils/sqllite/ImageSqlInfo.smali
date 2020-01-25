.class public Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
.super Lorg/lasque/tusdk/core/utils/sqllite/SqlLiteInfo;


# instance fields
.field public albumId:J

.field public createDate:Ljava/util/Calendar;

.field public id:J

.field public length:J

.field public name:Ljava/lang/String;

.field public orientation:I

.field public path:Ljava/lang/String;

.field public size:Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/sqllite/SqlLiteInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/SqlLiteInfo;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "width"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p0, p1, v1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1, v0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->size:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    check-cast p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iget-wide v2, p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public identify()Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->albumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInfoWithCursor(Landroid/database/Cursor;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_id"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    const-string v0, "_data"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    const-string v0, "orientation"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->orientation:I

    const-string v0, "date_modified"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseCalendar(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->createDate:Ljava/util/Calendar;

    const-string v0, "bucket_id"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->albumId:J

    const-string v0, "_size"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->length:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->a(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{id: %s, albumId: %s, orientation: %s, createDate: %s, length: %s, path: %s, name: %s, size: %s}"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->albumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->createDate:Ljava/util/Calendar;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->length:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->name:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->size:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
