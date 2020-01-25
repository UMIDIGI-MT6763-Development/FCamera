.class public interface abstract Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;
.super Ljava/lang/Object;
.source "IZoomConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;
    }
.end annotation


# static fields
.field public static final DISTANCE_RATIO_MAX:I = 0x2

.field public static final DISTANCE_RATIO_MIN:I = -0x1

.field public static final KEY_CAMERA_ZOOM:Ljava/lang/String; = "key_camera_zoom"

.field public static final PATTERN1:Ljava/lang/String; = "%.0f"

.field public static final PATTERN2:Ljava/lang/String; = "%.1f"

.field public static final ZOOM_OFF:Ljava/lang/String; = "off"

.field public static final ZOOM_ON:Ljava/lang/String; = "on"


# virtual methods
.method public abstract onScalePerformed(D)V
.end method

.method public abstract onScaleStatus(Z)V
.end method

.method public abstract setZoomUpdateListener(Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;)V
.end method
