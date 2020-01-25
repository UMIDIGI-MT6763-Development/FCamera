.class Lcom/freeme/camera/data/LocalDataList$UriWrapper;
.super Ljava/lang/Object;
.source "LocalDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriWrapper"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/data/LocalDataList$UriWrapper;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/freeme/camera/data/LocalData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList$UriWrapper;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
