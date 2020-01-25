.class public Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;
.super Lorg/lasque/tusdk/core/utils/sqllite/SqlLiteInfo;


# static fields
.field public static final BUCKET_TOTAL:Ljava/lang/String; = "bucket_total"

.field public static final CAMERA_FOLDER:Ljava/lang/String; = "Camera"


# instance fields
.field public cover:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

.field public id:J

.field public title:Ljava/lang/String;

.field public total:I


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

.method public static cameraFolder()Ljava/io/File;
    .locals 1

    const-string v0, "Camera"

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAblumPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static sortTitle(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo$1;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public setInfoWithCursor(Landroid/database/Cursor;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bucket_id"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->id:J

    const-string v0, "bucket_display_name"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    const-string v0, "bucket_total"

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{id: %s, title: %s, total: %s, cover: %s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->total:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->cover:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
