.class Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;
.super Ljava/lang/Object;
.source "BeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;->onDataBeautyCallback([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;

.field final synthetic val$jpeg:[B


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;[B)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;->val$jpeg:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$4$1;->val$jpeg:[B

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$700(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;[B)V

    return-void
.end method
