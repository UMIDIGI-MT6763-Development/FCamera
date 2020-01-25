.class Lcom/freeme/camera/feature/setting/dng/Dng$3;
.super Ljava/lang/Object;
.source "Dng.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/Dng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/Dng;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/dng/Dng;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayOrientationUpdate()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$500(Lcom/freeme/camera/feature/setting/dng/Dng;)I

    move-result v0

    return v0
.end method

.method public onDngCreatorStateUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$902(Lcom/freeme/camera/feature/setting/dng/Dng;Z)Z

    return-void
.end method

.method public onDngValueUpdate(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDngValueUpdate] isSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->setEntryValues(Ljava/util/List;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$100(Lcom/freeme/camera/feature/setting/dng/Dng;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/dng/Dng;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    const-string p2, "off"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/dng/Dng;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSaveDngImage([BLandroid/util/Size;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$500(Lcom/freeme/camera/feature/setting/dng/Dng;)I

    move-result v2

    invoke-static {v0, v1, p2, v2}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$600(Lcom/freeme/camera/feature/setting/dng/Dng;III)Landroid/content/ContentValues;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$800(Lcom/freeme/camera/feature/setting/dng/Dng;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$3;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$700(Lcom/freeme/camera/feature/setting/dng/Dng;)Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method
