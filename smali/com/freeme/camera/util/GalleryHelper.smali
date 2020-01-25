.class public Lcom/freeme/camera/util/GalleryHelper;
.super Ljava/lang/Object;
.source "GalleryHelper.java"


# static fields
.field private static final GALLERY_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.gallery3d.app.GalleryActivity"

.field public static final GALLERY_APP_NAME_ID:I = 0x7f0f00e5

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.android.gallery3d"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGalleryAppName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.android.gallery3d"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.gallery3d.app.GalleryActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f00e5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGalleryIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setContentUri(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public static setGalleryIntentClassName(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.gallery3d"

    const-string v1, "com.android.gallery3d.app.GalleryActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
