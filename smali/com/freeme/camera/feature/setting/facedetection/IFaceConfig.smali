.class public interface abstract Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;
.super Ljava/lang/Object;
.source "IFaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;,
        Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;
    }
.end annotation


# static fields
.field public static final FACE_DETECTION_OFF:Ljava/lang/String; = "off"

.field public static final FACE_DETECTION_ON:Ljava/lang/String; = "on"

.field public static final KEY_FACE_DETECTION:Ljava/lang/String; = "key_face_detection"


# virtual methods
.method public abstract resetFaceDetectionState()V
.end method

.method public abstract setFaceDetectionUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V
.end method

.method public abstract setFaceMonitor(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;)V
.end method

.method public abstract setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V
.end method

.method public abstract updateImageOrientation()V
.end method
