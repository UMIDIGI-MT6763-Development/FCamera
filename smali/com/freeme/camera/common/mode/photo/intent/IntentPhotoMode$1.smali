.class Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode$1;
.super Ljava/lang/Object;
.source "IntentPhotoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode$1;->this$0:Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode$1;->this$0:Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->access$100(Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/common/app/IApp;->notifyNewMedia(Landroid/net/Uri;Z)V

    return-void
.end method
