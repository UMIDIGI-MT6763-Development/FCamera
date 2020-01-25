.class public Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;
.super Lorg/lasque/tusdk/core/task/ImageViewTaskWare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/task/AlbumTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumTaskImageWare"
.end annotation


# instance fields
.field public imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

.field public taskType:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->setImageView(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iput-object p3, p0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->taskType:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    if-nez p3, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeMiniThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->taskType:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    :cond_0
    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->isCancel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskImageWare;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "lsq_style_default_image_none"

    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->imageLoaded(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    return-void
.end method
