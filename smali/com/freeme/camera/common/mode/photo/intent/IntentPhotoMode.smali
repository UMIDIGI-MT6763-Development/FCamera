.class public Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;
.super Lcom/freeme/camera/common/mode/photo/PhotoMode;
.source "IntentPhotoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;
.implements Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;


# static fields
.field private static final CROP_INTENT:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final EXTRA_PHOTO_CROP_VALUE:Ljava/lang/String; = "crop"

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final INLINED_DATA_INTENT:Ljava/lang/String; = "inline-data"

.field private static final INTENT_EXTRA_CIRCLE:Ljava/lang/String; = "circle"

.field private static final INTENT_EXTRA_CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field private static final INTENT_EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final INTENT_EXTRA_RETURN_DATA:Ljava/lang/String; = "return-data"

.field private static final MAX_NUMBER_PIXELS:I = 0xc800

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCropValue:Ljava/lang/String;

.field private mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

.field private mIsQuickCapture:Z

.field private mJpegData:[B

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mSaveUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode$1;-><init>(Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private attachToCropIntent()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[attachToCropIntent]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->getTempUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[attachToCropIntent] return because temp uri is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "circle"

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_2
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private attachToInLinedIntent()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[attachToInLinedIntent]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getOrientationFromExif([B)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private attachToSaveUri()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[attachToSaveUri]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_1
    sget-object v1, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[doAttach] IOException"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private doAttach()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doAttach]mCropValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->saveData()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->attachToSaveUri()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->attachToInLinedIntent()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->attachToCropIntent()V

    :goto_0
    return-void
.end method

.method private getTempUri()Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-object v3, v1

    :catch_2
    :try_start_3
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v3}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private isCameraAvailable()Z
    .locals 2

    const-string v0, "closed"

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->getModeDeviceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private parserIntent()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    const-string v1, "android.intent.extra.quickCapture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIsQuickCapture:Z

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    return-void
.end method

.method private registerUIListener()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->setOkButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->setRetakeButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;)V

    :cond_0
    return-void
.end method

.method private saveData()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[saveData]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[saveData] don\'t need save sdcard and insert DB"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mPhotoModeHelper:Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private unRegisterUIListener()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->setOkButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->setRetakeButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    sget-object p2, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "[init]"

    invoke-static {p2, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/IAppUi;->getPhotoUi()Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->registerUIListener()V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->parserIntent()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onBackPressed]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v1
.end method

.method public onDataReceived(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;)V
    .locals 3

    iget-object p1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->data:[B

    sget-object v0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataReceived] data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->stopPreview()V

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIsResumed:Z

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIsQuickCapture:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->doAttach()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->onPictureReceived([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onOkClickClicked()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->doAttach()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onPreviewCallback([BI)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onPreviewCallback([BI)V

    :cond_0
    return-void
.end method

.method public onRetakeClicked()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->isCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->stopPreview()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_photo_capture"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->startPreview()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    :cond_0
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onShutterButtonClick()Z

    move-result v0

    return v0
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onShutterButtonFocus(Z)Z

    move-result p1

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onShutterButtonLongPressed()Z

    move-result v0

    return v0
.end method

.method public pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->hide()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mJpegData:[B

    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIIntentPhotoUi:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;->hide()V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->unInit()V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/intent/IntentPhotoMode;->unRegisterUIListener()V

    return-void
.end method
