.class public Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;
.super Ljava/lang/Object;
.source "FaceBeautyUtil.java"


# static fields
.field public static final CLASSIC:I = 0x1

.field public static final CUSTOM:I = 0x3

.field private static DEFAULT_GRADE:I = 0x1

.field private static final DEFAULT_LEVEL:I = 0x2

.field public static final EXTREME:I = 0x2

.field public static final EYE_CICLES:I = 0x3

.field public static final EYE_ENLARGE:I = 0x3

.field public static final FACE_SLIMING:I = 0x2

.field public static final FB_GRADE:I = 0x0

.field private static final GRADE_INDEX:I = 0x3

.field private static final LEVELS:I = 0x6

.field private static final NAME:Ljava/lang/String; = "fb_fb_config_level"

.field public static final NATURAL:I = 0x0

.field public static final SKIN_SMOOTHING:I = 0x0

.field public static final SKIN_TONING:I = 0x1

.field private static final TYPES:I = 0x5

.field public static mLevel:I = 0x1

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static final sGradeLevelIndex:[I

.field private static final sPrefKeys:[Ljava/lang/String;

.field private static final sSFBParamCfgTbl:[[I

.field private static final sVFBParamCfgTbl:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "pref_key_fb_grade"

    const-string v1, "pref_key_skin_toning"

    const-string v2, "pref_key_face_sliming"

    const-string v3, "pref_key_eye_enlarge"

    const-string v4, "pref_key_customize_skin_toning"

    const-string v5, "pref_key_customize_face_sliming"

    const-string v6, "pref_key_customize_eye_enlarge"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sPrefKeys:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sGradeLevelIndex:[I

    const/4 v1, 0x5

    new-array v2, v1, [[I

    sput-object v2, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sVFBParamCfgTbl:[[I

    new-array v1, v1, [[I

    sput-object v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sSFBParamCfgTbl:[[I

    sget-object v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sVFBParamCfgTbl:[[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v0

    sget-object v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sSFBParamCfgTbl:[[I

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v0

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1e
        0x3c
        0x5a
        0x78
        0x96
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x28
        0x46
        0x64
        0x82
        0xa0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x14
        0x28
        0x3c
        0x50
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1e
        0x3c
        0x5a
        0x78
        0x96
    .end array-data

    :array_5
    .array-data 4
        0x14
        0x32
        0x5a
        0x82
        0xb4
        0xc8
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1e
        0x3c
        0x5a
        0x78
        0x96
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x28
        0x46
        0x64
        0x82
        0xa0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x14
        0x28
        0x3c
        0x50
        0x64
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x1e
        0x3c
        0x5a
        0x78
        0x96
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x32
        0x5a
        0x82
        0xb4
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGradeLevelIndex(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sGradeLevelIndex:[I

    aget p0, v0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getGradeLevelIndex(): this grade not support!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getKey(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sPrefKeys:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getLevelIndex(I)I
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->DEFAULT_GRADE:I

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    sget v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mLevel:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    add-int/2addr p0, v3

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSfbParamsLevel(I)I
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz p0, :cond_1

    const/4 v1, 0x5

    if-ge p0, v1, :cond_1

    if-ltz v0, :cond_1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sSFBParamCfgTbl:[[I

    aget-object p0, v1, p0

    aget p0, p0, v0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getSfbParamsLevel(): Illegal type and level value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVfbParamsLevel(I)I
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mLevel:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, p0, 0x3

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ltz p0, :cond_2

    const/4 v1, 0x5

    if-ge p0, v1, :cond_2

    if-ltz v0, :cond_2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sVFBParamCfgTbl:[[I

    aget-object p0, v1, p0

    aget p0, p0, v0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getVfbParamsLevel(): Illegal type and level value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "fb_fb_config_level"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object p0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->sPrefKeys:[Ljava/lang/String;

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v0, v0, v1

    sget v1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->DEFAULT_GRADE:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static saveLevelIndex(II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x3

    if-nez p0, :cond_1

    sput p1, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->mLevel:I

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-ge p1, v1, :cond_2

    const/4 p0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-ge p0, v1, :cond_2

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getGradeLevelIndex(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p0, v1

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
