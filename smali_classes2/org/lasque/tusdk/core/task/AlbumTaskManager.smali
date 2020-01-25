.class public Lorg/lasque/tusdk/core/task/AlbumTaskManager;
.super Lorg/lasque/tusdk/core/task/ImageViewTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;,
        Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/task/ImageViewTask<",
        "Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;",
        ">;"
    }
.end annotation


# static fields
.field public static TypeMiniThumbSize:I

.field public static TypeThumbSize:I

.field public static final shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    const/16 v0, 0x64

    sput v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->TypeMiniThumbSize:I

    const/16 v0, 0xc8

    sput v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->TypeThumbSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTask;-><init>()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->hasAvailableExternal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getThumbnail(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->taskType:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    sget-object v1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    sget v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->TypeThumbSize:I

    invoke-static {p1, v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    sget v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->TypeMiniThumbSize:I

    invoke-static {p1, v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$1;->a:[I

    iget-object v1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->taskType:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->a(Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->getScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Landroid/graphics/Bitmap;
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->resetQueues()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/task/ImageViewTask;->finalize()V

    return-void
.end method

.method protected getCacheKey(Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->identify()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p1, p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->taskType:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->getCacheKey(Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadFullScreenImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeFullScreen:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;

    invoke-direct {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;-><init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadResolution(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeResolution:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V

    return-void
.end method

.method public loadThumbImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V

    return-void
.end method

.method public loadThumbMiniImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeMiniThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V

    return-void
.end method
