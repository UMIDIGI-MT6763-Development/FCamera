.class public Lcom/mediatek/accessor/packer/PackerManager;
.super Ljava/lang/Object;
.source "PackerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustDataPacker:Lcom/mediatek/accessor/packer/IPacker;

.field private mJpgPacker:Lcom/mediatek/accessor/packer/IPacker;

.field private mXmpPacker:Lcom/mediatek/accessor/packer/IPacker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/packer/PackerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pack(Lcom/mediatek/accessor/packer/PackInfo;)[B
    .locals 2

    sget-object v0, Lcom/mediatek/accessor/packer/PackerManager;->TAG:Ljava/lang/String;

    const-string v1, "<pack>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/packer/XmpPacker;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/packer/XmpPacker;-><init>(Lcom/mediatek/accessor/packer/PackInfo;)V

    iput-object v0, p0, Lcom/mediatek/accessor/packer/PackerManager;->mXmpPacker:Lcom/mediatek/accessor/packer/IPacker;

    iget-object v0, p0, Lcom/mediatek/accessor/packer/PackerManager;->mXmpPacker:Lcom/mediatek/accessor/packer/IPacker;

    invoke-interface {v0}, Lcom/mediatek/accessor/packer/IPacker;->pack()V

    new-instance v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/packer/CustomizedDataPacker;-><init>(Lcom/mediatek/accessor/packer/PackInfo;)V

    iput-object v0, p0, Lcom/mediatek/accessor/packer/PackerManager;->mCustDataPacker:Lcom/mediatek/accessor/packer/IPacker;

    iget-object v0, p0, Lcom/mediatek/accessor/packer/PackerManager;->mCustDataPacker:Lcom/mediatek/accessor/packer/IPacker;

    invoke-interface {v0}, Lcom/mediatek/accessor/packer/IPacker;->pack()V

    new-instance v0, Lcom/mediatek/accessor/packer/JpgPacker;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/packer/JpgPacker;-><init>(Lcom/mediatek/accessor/packer/PackInfo;)V

    iput-object v0, p0, Lcom/mediatek/accessor/packer/PackerManager;->mJpgPacker:Lcom/mediatek/accessor/packer/IPacker;

    iget-object v0, p0, Lcom/mediatek/accessor/packer/PackerManager;->mJpgPacker:Lcom/mediatek/accessor/packer/IPacker;

    invoke-interface {v0}, Lcom/mediatek/accessor/packer/IPacker;->pack()V

    iget-object p1, p1, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    return-object p1
.end method

.method public unpack([B)Lcom/mediatek/accessor/packer/PackInfo;
    .locals 2

    sget-object v0, Lcom/mediatek/accessor/packer/PackerManager;->TAG:Ljava/lang/String;

    const-string v1, "<unpack>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/packer/PackInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/packer/PackInfo;-><init>()V

    iput-object p1, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    new-instance p1, Lcom/mediatek/accessor/packer/JpgPacker;

    invoke-direct {p1, v0}, Lcom/mediatek/accessor/packer/JpgPacker;-><init>(Lcom/mediatek/accessor/packer/PackInfo;)V

    iput-object p1, p0, Lcom/mediatek/accessor/packer/PackerManager;->mJpgPacker:Lcom/mediatek/accessor/packer/IPacker;

    iget-object p1, p0, Lcom/mediatek/accessor/packer/PackerManager;->mJpgPacker:Lcom/mediatek/accessor/packer/IPacker;

    invoke-interface {p1}, Lcom/mediatek/accessor/packer/IPacker;->unpack()V

    new-instance p1, Lcom/mediatek/accessor/packer/XmpPacker;

    invoke-direct {p1, v0}, Lcom/mediatek/accessor/packer/XmpPacker;-><init>(Lcom/mediatek/accessor/packer/PackInfo;)V

    iput-object p1, p0, Lcom/mediatek/accessor/packer/PackerManager;->mXmpPacker:Lcom/mediatek/accessor/packer/IPacker;

    iget-object p1, p0, Lcom/mediatek/accessor/packer/PackerManager;->mXmpPacker:Lcom/mediatek/accessor/packer/IPacker;

    invoke-interface {p1}, Lcom/mediatek/accessor/packer/IPacker;->unpack()V

    new-instance p1, Lcom/mediatek/accessor/packer/CustomizedDataPacker;

    invoke-direct {p1, v0}, Lcom/mediatek/accessor/packer/CustomizedDataPacker;-><init>(Lcom/mediatek/accessor/packer/PackInfo;)V

    iput-object p1, p0, Lcom/mediatek/accessor/packer/PackerManager;->mCustDataPacker:Lcom/mediatek/accessor/packer/IPacker;

    iget-object p1, p0, Lcom/mediatek/accessor/packer/PackerManager;->mCustDataPacker:Lcom/mediatek/accessor/packer/IPacker;

    invoke-interface {p1}, Lcom/mediatek/accessor/packer/IPacker;->unpack()V

    return-object v0
.end method
