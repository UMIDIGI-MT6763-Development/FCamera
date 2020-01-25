.class public interface abstract Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract pausdRecording()V
.end method

.method public abstract setEnableHorizontallyFlip(Z)V
.end method

.method public abstract startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract updateWaterMark(Landroid/graphics/Bitmap;ILorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V
.end method
