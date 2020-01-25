.class public interface abstract Lcom/freeme/camera/filmstrip/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# static fields
.field public static final ACTION_DEMOTE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_PROMOTE:I = 0x1

.field public static final ACTION_ZOOM:I = 0x4

.field public static final SIZE_FULL:I = -0x2

.field public static final VIEW_TYPE_NONE:I = 0x0

.field public static final VIEW_TYPE_REMOVABLE:I = 0x2

.field public static final VIEW_TYPE_STICKY:I = 0x1


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getLatLong()[D
.end method

.method public abstract getRotation()I
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getViewType()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract isUIActionSupported(I)Z
.end method

.method public abstract prepare()V
.end method

.method public abstract recycle(Landroid/view/View;)V
.end method
