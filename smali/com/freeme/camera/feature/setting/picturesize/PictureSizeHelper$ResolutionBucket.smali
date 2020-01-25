.class Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;
.super Ljava/lang/Object;
.source "PictureSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolutionBucket"
.end annotation


# instance fields
.field public aspectRatio:D

.field public sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;->sizes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
