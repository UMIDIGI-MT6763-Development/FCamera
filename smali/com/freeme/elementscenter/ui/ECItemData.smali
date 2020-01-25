.class public Lcom/freeme/elementscenter/ui/ECItemData;
.super Ljava/lang/Object;
.source "ECItemData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DOWNLOADED:I = 0x1

.field public static final DOWNLOADING:I = 0x2

.field public static final NO_DOWNLOAD:I = 0x0

.field private static final serialVersionUID:J = -0x3dd850af982ffc4L


# instance fields
.field public mCode:Ljava/lang/String;

.field public mColor:I

.field public mDownloadProgress:I

.field public mDownloadStatus:I

.field public mId:Ljava/lang/String;

.field public mIsChecked:Z

.field public mName:Ljava/lang/String;

.field public mPageItemTypeCode:I

.field public mPreviewUrl:Ljava/lang/String;

.field public mPriFileSize:I

.field public mPriThumbnailFileSize:I

.field public mPriThumbnailUrl:Ljava/lang/String;

.field public mPrimitiveUrl:Ljava/lang/String;

.field public mPrompt:Ljava/lang/String;

.field public mThumbnailUrl:Ljava/lang/String;

.field public mTypeCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
