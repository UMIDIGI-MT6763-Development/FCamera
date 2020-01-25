.class Lcom/freeme/camera/data/LocalMediaData$VideoData$1;
.super Ljava/lang/Object;
.source "LocalMediaData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/data/LocalMediaData$VideoData;->getView(Landroid/content/Context;Landroid/view/View;IIILcom/freeme/camera/data/LocalDataAdapter;ZLcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/data/LocalMediaData$VideoData;

.field final synthetic val$actionCallback:Lcom/freeme/camera/data/LocalData$ActionCallback;


# direct methods
.method constructor <init>(Lcom/freeme/camera/data/LocalMediaData$VideoData;Lcom/freeme/camera/data/LocalData$ActionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/freeme/camera/data/LocalMediaData$VideoData;

    iput-object p2, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;->val$actionCallback:Lcom/freeme/camera/data/LocalData$ActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;->val$actionCallback:Lcom/freeme/camera/data/LocalData$ActionCallback;

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/freeme/camera/data/LocalMediaData$VideoData;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/freeme/camera/data/LocalMediaData$VideoData;

    iget-object v1, v1, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mMimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;->this$0:Lcom/freeme/camera/data/LocalMediaData$VideoData;

    iget-object v2, v2, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/freeme/camera/data/LocalData$ActionCallback;->playVideo(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
