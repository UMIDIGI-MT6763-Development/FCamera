.class public interface abstract Lcom/freeme/camera/data/LocalData;
.super Ljava/lang/Object;
.source "LocalData.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/ImageData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/LocalData$NewestFirstComparator;,
        Lcom/freeme/camera/data/LocalData$ActionCallback;
    }
.end annotation


# static fields
.field public static final DATA_ACTION_DELETE:I = 0x2

.field public static final DATA_ACTION_EDIT:I = 0x4

.field public static final DATA_ACTION_NONE:I = 0x0

.field public static final DATA_ACTION_PLAY:I = 0x1

.field public static final DATA_ACTION_SHARE:I = 0x8

.field public static final LOCAL_CAMERA_PREVIEW:I = 0x1

.field public static final LOCAL_IMAGE:I = 0x3

.field public static final LOCAL_IN_PROGRESS_DATA:I = 0x5

.field public static final LOCAL_VIDEO:I = 0x4

.field public static final LOCAL_VIEW:I = 0x2

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"


# virtual methods
.method public abstract canSwipeInFullScreen()Z
.end method

.method public abstract delete(Landroid/content/Context;)Z
.end method

.method public abstract getContentId()J
.end method

.method public abstract getDateModified()J
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getItemViewType()Lcom/freeme/camera/data/LocalDataViewType;
.end method

.method public abstract getLocalDataType()I
.end method

.method public abstract getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;
.end method

.method public abstract getMetadata()Landroid/os/Bundle;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSizeInBytes()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getView(Landroid/content/Context;Landroid/view/View;IIILcom/freeme/camera/data/LocalDataAdapter;ZLcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;
.end method

.method public abstract isDataActionSupported(I)Z
.end method

.method public abstract isMetadataUpdated()Z
.end method

.method public abstract loadFullImage(Landroid/content/Context;IILandroid/view/View;Lcom/freeme/camera/data/LocalDataAdapter;)V
.end method

.method public abstract onFullScreen(Z)V
.end method

.method public abstract refresh(Landroid/content/Context;)Lcom/freeme/camera/data/LocalData;
.end method
