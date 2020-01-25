.class Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;
.super Ljava/lang/Object;
.source "BeautyFaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->onPictureDataCompleted(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;

.field final synthetic val$intBuffer:Ljava/nio/IntBuffer;

.field final synthetic val$tuSdkSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljava/nio/IntBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->val$tuSdkSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->val$intBuffer:Ljava/nio/IntBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "\u62cd\u6444\u5904\u7406\u603b\u8017\u65f6: %d ms"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$500(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->val$tuSdkSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->val$tuSdkSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->val$intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v5

    const-string v0, "buffer -> bitmap taken: %d ms"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$600(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$600(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    move-result-object v3

    const/16 v5, 0x64

    invoke-static {v2, v5}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2byteArrayTurbo(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;->onDataBeautyCallback([B)V

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v2

    const-string v0, "bitmap -> jpeg taken: %d ms"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
