.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$1;
.super Ljava/lang/Object;
.source "MatrixDisplayHandler.java"

# interfaces
.implements Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectAvailable()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onEffectAvailable]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;->onEffectAvailable()V

    return-void
.end method
