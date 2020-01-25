.class Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;
.super Ljava/lang/Object;
.source "BeautyFaceView.java"

# interfaces
.implements Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSDMediaRecorder()Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaRecoderProgressChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;->onMediaRecoderProgressChanged(F)V

    :cond_0
    return-void
.end method

.method public onMediaRecoderStateChanged(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$700(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1400(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->getOutputFilePath()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveMp4ToAlbum(Landroid/content/Context;Ljava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$700(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->notifyRefreshAblum(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;->onMediaRecoderStateChanged(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    :cond_0
    return-void
.end method
