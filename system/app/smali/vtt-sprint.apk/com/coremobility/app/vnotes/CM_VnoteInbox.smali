.class public final Lcom/coremobility/app/vnotes/CM_VnoteInbox;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/integration/i/e;
.implements Lcom/coremobility/integration/i/g;
.implements Lcom/coremobility/integration/i/h;
.implements Lcom/coremobility/k/dg;


# static fields
.field private static F:I

.field private static H:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static j:I


# instance fields
.field private G:Landroid/app/ProgressDialog;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/TextView;

.field private O:[Landroid/widget/RelativeLayout;

.field private P:[Landroid/widget/TextView;

.field private Q:[Landroid/widget/ImageView;

.field private R:I

.field private S:Z

.field private T:I

.field private U:I

.field private V:Lcom/coremobility/app/vnotes/be;

.field private W:Lcom/coremobility/app/vnotes/fy;

.field private X:Ljava/lang/String;

.field private Y:I

.field private volatile Z:Landroid/os/Handler;

.field private aa:Ljava/lang/String;

.field private ab:Landroid/os/Parcelable;

.field private ac:Z

.field private ad:Lcom/coremobility/app/vnotes/fv;

.field c:Lcom/coremobility/app/vnotes/bi;

.field d:Landroid/widget/ListView;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Lcom/coremobility/app/vnotes/fx;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "recipient_mdns"

    aput-object v1, v0, v5

    const-string v1, "recv_timestamp"

    aput-object v1, v0, v6

    const-string v1, "out_timestamp"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const-string v1, "sender_email"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "previous_sender"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recipient_emails"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "txt_summary"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dir_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "record_id"

    aput-object v1, v0, v5

    const-string v1, "file_type"

    aput-object v1, v0, v6

    const-string v1, "filename_only"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const-string v1, "file_order"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b:[Ljava/lang/String;

    sput v3, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->j:I

    sput v4, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->R:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->U:I

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->X:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Y:I

    new-instance v0, Lcom/coremobility/app/vnotes/ee;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ee;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ab:Landroid/os/Parcelable;

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h:Z

    return-void
.end method

.method public static a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->H:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Z)I

    move-result v1

    if-lez v1, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Vector;IIZ)V
    .registers 9

    if-eqz p3, :cond_43

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/fw;

    move v4, p1

    :goto_9
    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_84

    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, p2, -0x1

    if-eq v3, v1, :cond_8b

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/fw;

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/fw;

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/fw;->a(Lcom/coremobility/app/vnotes/fw;)Z

    move-result v1

    if-eqz v1, :cond_8b

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :goto_2e
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/fw;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/fw;->a(Lcom/coremobility/app/vnotes/fw;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v4, v2

    goto :goto_9

    :cond_43
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/fw;

    move v4, p1

    :goto_4a
    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_84

    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, p2, -0x1

    if-eq v3, v1, :cond_89

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/fw;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/fw;

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/fw;->b(Lcom/coremobility/app/vnotes/fw;)Z

    move-result v1

    if-eqz v1, :cond_89

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :goto_6f
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/fw;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/fw;->b(Lcom/coremobility/app/vnotes/fw;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v4, v2

    goto :goto_4a

    :cond_84
    move v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_89
    move v2, v3

    goto :goto_6f

    :cond_8b
    move v2, v3

    goto :goto_2e
.end method

.method private static a(Ljava/util/Vector;Z)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    :goto_11
    if-ltz v0, :cond_19

    invoke-static {p0, v0, v1, p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Ljava/util/Vector;IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_19
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :goto_1c
    if-lez v1, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/fw;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-static {p0, v3, v1, p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Ljava/util/Vector;IIZ)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1c
.end method

.method private a(Z)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f:Z

    if-ne p1, v1, :cond_21

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->K:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    :goto_10
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_vnotes_mwi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_21
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->I:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->K:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_10
.end method

.method private a(IZ)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v2

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v4, 0x32

    if-lt v0, v4, :cond_1c

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    move v0, v1

    goto :goto_5

    :cond_1c
    if-eqz p2, :cond_46

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_44

    const/4 v0, 0x1

    :goto_36
    if-eqz v0, :cond_46

    long-to-int v0, v2

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->U:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/be;->a(I)V

    move v0, v1

    goto :goto_5

    :cond_44
    move v0, v1

    goto :goto_36

    :cond_46
    long-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(I)Z

    move-result v0

    goto :goto_5
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    return p1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->U:I

    return v0
.end method

.method private b(IZ)V
    .registers 11

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_6
    :sswitch_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_6

    if-nez p2, :cond_2b

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result p2

    :cond_2b
    array-length v4, v3

    move v0, v1

    :goto_2d
    if-ge v0, v4, :cond_77

    aget v5, v3, v0

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->k(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    aget v0, v3, v0

    :goto_39
    sparse-switch v0, :sswitch_data_7a

    goto :goto_6

    :sswitch_3d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnoteid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "autoplay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "vnotedir"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "use_filter"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_61
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_6d

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v0

    invoke-static {v2, v7, v0, v6, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZZLandroid/app/Activity;)V

    goto :goto_6

    :cond_6d
    if-nez p2, :cond_73

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result p2

    :cond_73
    invoke-static {v2, v7, p2, v6, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZZLandroid/app/Activity;)V

    goto :goto_6

    :cond_77
    move v0, v1

    goto :goto_39

    nop

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_3d
        0xb -> :sswitch_3d
        0xc -> :sswitch_3d
        0x12 -> :sswitch_3d
        0x14 -> :sswitch_3d
        0x15 -> :sswitch_3d
        0x16 -> :sswitch_3d
    .end sparse-switch
.end method

.method private b(Landroid/database/Cursor;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/fy;->changeCursor(Landroid/database/Cursor;)V

    :cond_9
    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g()V

    :cond_e
    return-void
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h:Z

    if-nez v0, :cond_24

    if-eqz p1, :cond_24

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->h(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0xd

    sget v2, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x1f

    sget v2, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto :goto_17

    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    goto :goto_17
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    return p1
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/fy;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    return-object v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->z()V

    return-void
.end method

.method private c(I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1d

    const/16 v1, 0x88

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    :cond_1d
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    return v0
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method private d(I)V
    .registers 5

    invoke-static {p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    return-void
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d(I)V

    return-void
.end method

.method private static e(I)Ljava/lang/String;
    .registers 5

    const-string v0, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    sget-boolean v1, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1869f

    if-ne p0, v1, :cond_21

    const-string v0, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->a(IZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(recipient_mdns LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private f()V
    .registers 9

    const/4 v2, 0x0

    const/16 v1, 0x2a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->b()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/fy;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ad:Lcom/coremobility/app/vnotes/fv;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/fv;->cancelOperation(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ad:Lcom/coremobility/app/vnotes/fv;

    sget-object v3, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->r:Landroid/net/Uri;

    sget-object v4, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    const-string v7, "out_timestamp DESC,_id DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/app/vnotes/fv;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .registers 10

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_170

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCount()I

    move-result v0

    move v1, v0

    :goto_1d
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v0

    sget v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    if-le v0, v2, :cond_c1

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    move v2, v0

    :goto_28
    invoke-static {v8}, Lcom/coremobility/app/vnotes/cq;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->R:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    const v5, 0x1869f

    if-ne v0, v5, :cond_d5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->M:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_47
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0050

    invoke-virtual {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->R:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->J:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_80
    if-eqz v6, :cond_c8

    move v5, v3

    :goto_83
    if-ge v5, v2, :cond_161

    :try_start_85
    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget v0, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->P:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->P:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->b(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Q:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b6} :catch_1a2

    :goto_b6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_83

    :cond_ba
    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    goto/16 :goto_1d

    :cond_c1
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v0

    move v2, v0

    goto/16 :goto_28

    :cond_c8
    move v0, v3

    :goto_c9
    if-ge v0, v2, :cond_161

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_d5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->M:Landroid/widget/ImageView;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_de
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->J:Landroid/widget/TextView;

    const v5, 0x7f0c006f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->M:Landroid/widget/ImageView;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-static {v5, v8}, Lcom/coremobility/app/vnotes/cq;->a(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->b(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move v5, v3

    :goto_111
    if-ge v5, v2, :cond_148

    :try_start_113
    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget v0, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    aget-object v7, v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->P:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->P:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->b(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Q:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_144} :catch_1a0

    :goto_144
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_111

    :cond_148
    move v0, v3

    :goto_149
    if-ge v0, v2, :cond_156

    :try_start_14b
    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_153} :catch_19e

    :goto_153
    add-int/lit8 v0, v0, 0x1

    goto :goto_149

    :cond_156
    :try_start_156
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    aget-object v0, v0, v2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_161} :catch_19c

    :cond_161
    :goto_161
    sget-boolean v0, Lcom/coremobility/a/a;->f:Z

    if-eqz v0, :cond_16d

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->L:Landroid/widget/TextView;

    if-nez v1, :cond_16e

    move v0, v3

    :goto_16a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16d
    :goto_16d
    return-void

    :cond_16e
    move v0, v4

    goto :goto_16a

    :cond_170
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_195

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCount()I

    move-result v0

    :goto_17a
    invoke-static {v8}, Lcom/coremobility/app/vnotes/cq;->a(Z)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->R:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c:Lcom/coremobility/app/vnotes/bi;

    if-eqz v1, :cond_189

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c:Lcom/coremobility/app/vnotes/bi;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    :cond_189
    sget-boolean v1, Lcom/coremobility/a/a;->f:Z

    if-eqz v1, :cond_16d

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->L:Landroid/widget/TextView;

    if-nez v0, :cond_19a

    :goto_191
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16d

    :cond_195
    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_17a

    :cond_19a
    move v3, v4

    goto :goto_191

    :catch_19c
    move-exception v0

    goto :goto_161

    :catch_19e
    move-exception v5

    goto :goto_153

    :catch_1a0
    move-exception v0

    goto :goto_144

    :catch_1a2
    move-exception v0

    goto/16 :goto_b6
.end method

.method private h()V
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->S()Z

    move-result v1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preference_show_whats_new_voicemail"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "preference_show_what_is_voicemail"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x2

    if-eq v4, v5, :cond_30

    const/4 v5, 0x7

    if-ne v4, v5, :cond_31

    :cond_30
    const/4 v0, 0x1

    :cond_31
    if-nez v3, :cond_3e

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_3e
    if-eqz v2, :cond_49

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_49
    return-void
.end method

.method private i()V
    .registers 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :cond_24
    return-void
.end method

.method private static j()Ljava/lang/String;
    .registers 5

    const-string v2, ""

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v4, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v4, :cond_1b

    iget-object v0, v0, Lcom/coremobility/app/vnotes/ke;->g:Ljava/lang/String;

    :goto_1a
    return-object v0

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1f
    move-object v0, v2

    goto :goto_1a
.end method

.method private k()V
    .registers 6

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_15
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_22
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2f
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3c
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/a;->b()V

    :cond_43
    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/i/l;I)V
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/coremobility/integration/i/l;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ForceUpgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/coremobility/integration/i/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_35
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-boolean v1, p1, Lcom/coremobility/integration/i/l;->g:Z

    if-eqz v1, :cond_49

    iget v1, v0, Landroid/os/Message;->arg1:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_49
    iget v1, p1, Lcom/coremobility/integration/i/l;->f:I

    if-eqz v1, :cond_53

    iget v1, v0, Landroid/os/Message;->arg1:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_53
    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .registers 15

    const-wide/16 v4, 0x3

    const v3, 0x1869f

    const/4 v7, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1c8

    :cond_b
    :goto_b
    :pswitch_b
    move v0, v1

    :goto_c
    return v0

    :pswitch_d
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g()V

    goto :goto_b

    :pswitch_15
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    if-ne v0, v3, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto :goto_b

    :pswitch_24
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_b

    long-to-int v0, p2

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    if-ne v0, v2, :cond_48

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preference_inbox_filter"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_48
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    if-ne v0, v3, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto :goto_b

    :pswitch_53
    cmp-long v0, p2, v4

    if-nez v0, :cond_b

    if-eqz p6, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    move v0, v1

    goto :goto_c

    :pswitch_5e
    cmp-long v0, p2, v4

    if-nez v0, :cond_b

    if-eqz p6, :cond_b

    check-cast p6, Lcom/coremobility/k/de;

    if-eqz p6, :cond_6b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    :cond_6b
    move v0, v1

    goto :goto_c

    :pswitch_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGED "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p2, v4

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto/16 :goto_b

    :pswitch_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVED "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p2, v4

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto/16 :goto_b

    :pswitch_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUTODELETED num: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " err: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    goto/16 :goto_b

    :pswitch_ec
    const-string v3, "INBOXFULL %s %d"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-wide/16 v5, 0xb

    cmp-long v0, p2, v5

    if-nez v0, :cond_112

    const-string v0, "L"

    :goto_f9
    aput-object v0, v4, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/be;->a(I)V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    goto/16 :goto_b

    :cond_112
    const-string v0, "S"

    goto :goto_f9

    :pswitch_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MWI: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_13b

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Z)V

    :goto_136
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto/16 :goto_b

    :cond_13b
    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Z)V

    goto :goto_136

    :pswitch_13f
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    move v0, v2

    goto/16 :goto_c

    :pswitch_145
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    move v0, v1

    goto/16 :goto_c

    :pswitch_14b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/be;->b(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    long-to-int v0, p2

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Y:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v2, 0x1d

    sget v3, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v2, v3}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto/16 :goto_b

    :pswitch_172
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->j(Landroid/content/Context;)V

    goto/16 :goto_b

    :pswitch_17d
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->removeDialog(I)V

    check-cast p6, Lcom/coremobility/integration/h/c;

    iget v0, p6, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_19c

    iget v0, p6, Lcom/coremobility/integration/h/c;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_196

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    :cond_193
    :goto_193
    move v0, v2

    goto/16 :goto_c

    :cond_196
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto :goto_193

    :cond_19c
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c00bf

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_1bc

    const/16 v0, 0x8f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto :goto_193

    :cond_1bc
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_193

    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto :goto_193

    :pswitch_data_1c8
    .packed-switch 0x64
        :pswitch_53
        :pswitch_98
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_ec
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6d
        :pswitch_115
        :pswitch_b
        :pswitch_b
        :pswitch_c3
        :pswitch_b
        :pswitch_13f
        :pswitch_145
        :pswitch_b
        :pswitch_5e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_15
        :pswitch_24
        :pswitch_d
        :pswitch_172
        :pswitch_172
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_14b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_17d
    .end packed-switch
.end method

.method protected final a(Landroid/database/Cursor;)Z
    .registers 19

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v1, 0x0

    if-lez v3, :cond_2bd

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_1b

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    move-object v7, v1

    :goto_1c
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10, v9}, Ljava/util/Vector;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v9, :cond_40

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v3, :cond_37

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_37
    invoke-virtual {v10, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_40
    const-string v1, "out_timestamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13, v9}, Ljava/util/Vector;-><init>(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->x()I

    move-result v1

    packed-switch v1, :pswitch_data_2c0

    const-string v1, "out_timestamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_6a
    if-ge v8, v9, :cond_229

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    new-instance v1, Lcom/coremobility/app/vnotes/fw;

    aget-object v3, v6, v14

    check-cast v3, Ljava/lang/String;

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v6, v12

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coremobility/app/vnotes/fw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_6a

    :pswitch_94
    const-string v1, "out_timestamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_9e
    if-ge v8, v9, :cond_c8

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    new-instance v1, Lcom/coremobility/app/vnotes/fw;

    aget-object v3, v6, v14

    check-cast v3, Ljava/lang/String;

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v6, v12

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coremobility/app/vnotes/fw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_9e

    :cond_c8
    const/4 v1, 0x1

    :goto_c9
    invoke-static {v13, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Ljava/util/Vector;Z)V

    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v7, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_d3
    if-ge v2, v9, :cond_22c

    invoke-virtual {v13, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/fw;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/fw;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d3

    :pswitch_e6
    const-string v1, "out_timestamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_f0
    if-ge v8, v9, :cond_11a

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    new-instance v1, Lcom/coremobility/app/vnotes/fw;

    aget-object v3, v6, v14

    check-cast v3, Ljava/lang/String;

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v6, v12

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coremobility/app/vnotes/fw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_f0

    :cond_11a
    const/4 v1, 0x0

    goto :goto_c9

    :pswitch_11c
    const-string v1, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_126
    if-ge v8, v9, :cond_166

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    aget-object v1, v6, v14

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_163

    const/4 v1, 0x1

    move v2, v1

    :goto_141
    new-instance v1, Lcom/coremobility/app/vnotes/fw;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v6, v12

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coremobility/app/vnotes/fw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_126

    :cond_163
    const/4 v1, 0x0

    move v2, v1

    goto :goto_141

    :cond_166
    const/4 v1, 0x0

    goto/16 :goto_c9

    :pswitch_169
    const-string v1, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_173
    if-ge v8, v9, :cond_1b3

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    aget-object v1, v6, v14

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b0

    const/4 v1, 0x1

    move v2, v1

    :goto_18e
    new-instance v1, Lcom/coremobility/app/vnotes/fw;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v6, v12

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coremobility/app/vnotes/fw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_173

    :cond_1b0
    const/4 v1, 0x0

    move v2, v1

    goto :goto_18e

    :cond_1b3
    const/4 v1, 0x1

    goto/16 :goto_c9

    :pswitch_1b6
    const-string v1, "sender_mdn"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v1, "sender_email"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v1, "sender_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const/4 v1, 0x0

    move v8, v1

    :goto_1d0
    if-ge v8, v9, :cond_226

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    aget-object v1, v6, v14

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20e

    aget-object v1, v6, v15

    check-cast v1, Ljava/lang/String;

    :goto_1e6
    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_213

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :goto_1f0
    new-instance v1, Lcom/coremobility/app/vnotes/fw;

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v6, v12

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coremobility/app/vnotes/fw;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1d0

    :cond_20e
    aget-object v1, v6, v14

    check-cast v1, Ljava/lang/String;

    goto :goto_1e6

    :cond_213
    aget-object v1, v6, v16

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_220

    const-string v3, ""

    goto :goto_1f0

    :cond_220
    aget-object v1, v6, v16

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    goto :goto_1f0

    :cond_226
    const/4 v1, 0x0

    goto/16 :goto_c9

    :cond_229
    const/4 v1, 0x1

    goto/16 :goto_c9

    :cond_22c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    const-string v2, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_242

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/database/Cursor;)V

    :cond_242
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2bb

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/fy;->a(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ab:Landroid/os/Parcelable;

    if-eqz v1, :cond_27d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ab:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ac:Z

    if-eqz v1, :cond_273

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    :cond_273
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ac:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ab:Landroid/os/Parcelable;

    :cond_27d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    if-nez v1, :cond_2b9

    const/4 v1, 0x6

    const-string v2, "doUpgradeCheck"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/e;ZZ)I

    move-result v1

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2b9
    const/4 v1, 0x1

    :goto_2ba
    return v1

    :cond_2bb
    const/4 v1, 0x0

    goto :goto_2ba

    :cond_2bd
    move-object v7, v1

    goto/16 :goto_1c

    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_94
        :pswitch_e6
        :pswitch_11c
        :pswitch_169
        :pswitch_1b6
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final d()Lcom/coremobility/app/vnotes/be;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    return-object v0
.end method

.method public final h(I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final i(I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 13

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/4 v1, 0x5

    const/4 v6, 0x6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_ListForm;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->e()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_35
    :goto_35
    return-void

    :cond_36
    if-ne p1, v1, :cond_63

    if-nez p2, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrade Canceled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    if-eqz v0, :cond_60

    const-string v0, "Mandatory"

    :goto_4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->P()I

    goto :goto_35

    :cond_60
    const-string v0, "Optional"

    goto :goto_4b

    :cond_63
    if-ne p1, v6, :cond_6e

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VMSSETUPDONE"

    invoke-static {v0, v5, v5}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto :goto_35

    :cond_6e
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7a

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VTTSURVEYDONE"

    invoke-static {v0, v5, v5}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto :goto_35

    :cond_7a
    const/16 v0, 0x9

    if-ne p1, v0, :cond_87

    const/4 v0, 0x2

    if-ne p2, v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_35

    :cond_87
    if-eq p1, v7, :cond_8b

    if-ne p1, v8, :cond_35

    :cond_8b
    const/4 v0, -0x1

    if-ne p2, v0, :cond_35

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOICE_RECOGNITION_INTENT"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE_RECOGNITION_INTENT request code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    if-ne p1, v7, :cond_cc

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_cc
    if-ne p1, v8, :cond_35

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/app/Activity;Ljava/lang/String;)Z

    goto/16 :goto_35
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->K:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_e
    return-void
.end method

.method public final onContentChanged()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onContentChanged()V

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_e

    move v1, v2

    :cond_d
    :goto_d
    return v1

    :cond_e
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-gez v4, :cond_16

    move v1, v2

    goto :goto_d

    :cond_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_120

    :pswitch_1d
    move v1, v2

    goto :goto_d

    :pswitch_1f
    invoke-direct {p0, v4, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(IZ)Z

    goto :goto_d

    :pswitch_23
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v6, :cond_2e

    move v0, v1

    :goto_2a
    invoke-direct {p0, v4, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(IZ)V

    goto :goto_d

    :cond_2e
    move v0, v2

    goto :goto_2a

    :pswitch_30
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v2, v4}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_d

    :pswitch_45
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;ZLandroid/app/Activity;)Z

    goto :goto_d

    :pswitch_55
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_d

    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0074

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->X:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    :pswitch_98
    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_d

    :pswitch_a1
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d2

    move v0, v1

    :goto_b1
    const/4 v4, 0x6

    const-string v5, "isRead flag %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/cq;->h(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto/16 :goto_d

    :cond_d2
    move v0, v2

    goto :goto_b1

    :pswitch_d4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {p0, v0, v5}, Lcom/coremobility/app/vnotes/cq;->f(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    goto/16 :goto_d

    :pswitch_e3
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-eqz v0, :cond_118

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_f6

    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto/16 :goto_d

    :cond_f6
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_103

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto/16 :goto_d

    :cond_103
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2, v5, v0, v6}, Lcom/coremobility/app/vnotes/cf;->a(III)V

    goto/16 :goto_d

    :cond_118
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto/16 :goto_d

    nop

    :pswitch_data_120
    .packed-switch 0x5
        :pswitch_23
        :pswitch_98
        :pswitch_1d
        :pswitch_1d
        :pswitch_30
        :pswitch_45
        :pswitch_23
        :pswitch_1d
        :pswitch_1f
        :pswitch_1d
        :pswitch_55
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_a1
        :pswitch_1d
        :pswitch_1d
        :pswitch_e3
        :pswitch_1d
        :pswitch_1d
        :pswitch_d4
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sput-object p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->H:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_145

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-nez v0, :cond_145

    const-string v0, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :goto_16
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->A()V

    if-nez p1, :cond_14a

    move v1, v2

    :goto_1c
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->setDefaultKeyMode(I)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->setContentView(I)V

    new-instance v0, Lcom/coremobility/app/vnotes/be;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "preference_inbox_filter"

    const v5, 0x1869f

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_59
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v0, Lcom/coremobility/app/vnotes/fy;

    const v4, 0x7f03002d

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/coremobility/app/vnotes/fy;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->a()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->setListAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/coremobility/app/vnotes/fv;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/fv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ad:Lcom/coremobility/app/vnotes/fv;

    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->I:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->J:Landroid/widget/TextView;

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-boolean v4, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v4, :cond_c5

    new-instance v4, Lcom/coremobility/app/vnotes/bi;

    invoke-direct {v4, p0, v0, v7}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_c5
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->K:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->L:Landroid/widget/TextView;

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->M:Landroid/widget/ImageView;

    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->N:Landroid/widget/TextView;

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_14d

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->P:[Landroid/widget/TextView;

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Q:[Landroid/widget/ImageView;

    move v4, v3

    :goto_10d
    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->F:I

    if-ge v4, v0, :cond_14d

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->O:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0087

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v5, v4

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->P:[Landroid/widget/TextView;

    const v0, 0x7f0b0089

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v4

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Q:[Landroid/widget/ImageView;

    const v0, 0x7f0b0088

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v5, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_10d

    :cond_145
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto/16 :goto_16

    :cond_14a
    move v1, v3

    goto/16 :goto_1c

    :cond_14d
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.sprint.action.UPGRADE_CHECK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16d

    const-string v1, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    :cond_16d
    const/4 v1, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade Canceled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    if-eqz v0, :cond_1a4

    const-string v0, "Mandatory"

    :goto_17f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/i/f;->l()Z

    move-result v0

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_1a3
    :goto_1a3
    return-void

    :cond_1a4
    const-string v0, "Optional"

    goto :goto_17f

    :cond_1a7
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Z)V

    goto :goto_1a3

    :cond_1ad
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_1a3

    :cond_1b5
    const-string v4, "com.coremobility.app.vnotes.ACTION_UPDATE_COMPLETED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->z()V

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    :cond_1c6
    if-eqz v1, :cond_1a3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    if-nez v0, :cond_1dd

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->v()Z

    move-result v0

    if-eqz v0, :cond_1dd

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v7}, Lcom/coremobility/app/vnotes/be;->a(I)V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    :cond_1dd
    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_21b

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v0

    if-ne v0, v2, :cond_252

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v7, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_202
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_vtt_sub_error"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_218

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_218
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->j(Landroid/content/Context;)V

    :cond_21b
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_vnotes_show_prov_alert"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_239

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->u()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_256

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_239
    :goto_239
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_vnotes_show_personalize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_24b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V

    goto/16 :goto_1a3

    :cond_252
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i()V

    goto :goto_202

    :cond_256
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->u()I

    move-result v1

    if-ne v1, v2, :cond_239

    const v1, 0x7f0c006b

    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->i(Landroid/content/Context;I)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_vnotes_show_prov_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_239
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 21

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_9
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, p3

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v11, v1}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v11

    long-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v12, v1}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v9, 0x1

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v3

    :cond_35
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v8, 0x1

    :cond_3c
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v1

    if-eqz v1, :cond_44

    const/4 v10, 0x1

    :cond_44
    if-eqz v4, :cond_5b

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v13, "preference_send_fail_addr"

    const-string v14, "sendfailure@"

    invoke-interface {v1, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v13, "unknown@"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12f

    const/4 v6, 0x1

    :cond_5b
    :goto_5b
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7b

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-nez v1, :cond_7b

    const/4 v7, 0x1

    :cond_7b
    if-eqz v8, :cond_8e

    const-string v1, "+1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_8a
    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_8e
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/ka;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v1

    const-wide/16 v13, 0x2

    and-long/2addr v1, v13

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-lez v1, :cond_138

    const/4 v2, 0x1

    :goto_aa
    if-eqz v6, :cond_13b

    const v1, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
    :try_end_b4
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b4} :catch_15a

    move/from16 v16, v2

    move-object v2, v4

    move v4, v3

    move/from16 v3, v16

    :goto_ba
    if-eqz v7, :cond_17d

    const/4 v7, 0x0

    const/16 v11, 0xb

    const/4 v12, 0x0

    const/4 v1, 0x1

    const v13, 0x7f0c0030

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_c9
    if-eqz v9, :cond_18b

    if-nez v6, :cond_18b

    if-nez v5, :cond_18b

    if-nez v4, :cond_18b

    const/4 v7, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v1, 0x2

    const v13, 0x7f0c0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11, v12, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_ee
    :goto_ee
    const/4 v7, 0x0

    const/16 v11, 0xd

    add-int/lit8 v2, v1, 0x1

    const v12, 0x7f0c0029

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11, v1, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-nez v10, :cond_1cc

    if-nez v6, :cond_1cc

    if-nez v5, :cond_1cc

    if-nez v4, :cond_1cc

    if-nez v9, :cond_107

    if-eqz v8, :cond_1cc

    :cond_107
    const/4 v4, 0x0

    const/16 v5, 0x9

    add-int/lit8 v1, v2, 0x1

    const v6, 0x7f0c0032

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_114
    const/4 v2, 0x0

    const/16 v4, 0x17

    add-int/lit8 v5, v1, 0x1

    const v6, 0x7f0c003a

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v1, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v3, :cond_1bf

    const/4 v1, 0x0

    const/16 v2, 0x14

    const v3, 0x7f0c0037

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_12e
    return-void

    :cond_12f
    :try_start_12f
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v5, 0x1

    goto/16 :goto_5b

    :cond_138
    const/4 v2, 0x0

    goto/16 :goto_aa

    :cond_13b
    if-eqz v5, :cond_14d

    const v1, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    move/from16 v16, v2

    move-object v2, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_ba

    :cond_14d
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_152
    .catch Ljava/lang/ClassCastException; {:try_start_12f .. :try_end_152} :catch_15a

    move/from16 v16, v2

    move-object v2, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_ba

    :catch_15a
    move-exception v1

    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bad menuInfo"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v1, v12}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move/from16 v16, v2

    move-object v2, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_ba

    :cond_17d
    const/4 v7, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v1, 0x1

    const v13, 0x7f0c0024

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_c9

    :cond_18b
    if-eqz v8, :cond_ee

    if-nez v6, :cond_ee

    const/4 v7, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/4 v1, 0x2

    new-instance v13, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0c0023

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_ee

    :cond_1bf
    const/4 v1, 0x0

    const/16 v2, 0x1a

    const v3, 0x7f0c003b

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_12e

    :cond_1cc
    move v1, v2

    goto/16 :goto_114
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const v7, 0x7f0c00f3

    const v6, 0x7f0c00f2

    const/4 v4, 0x1

    const v5, 0x1080027

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_6d4

    :pswitch_e
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0143

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_18

    :pswitch_38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c023c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_18

    :pswitch_58
    new-instance v0, Lcom/coremobility/app/customui/b;

    invoke-direct {v0, p0}, Lcom/coremobility/app/customui/b;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setIcon(I)V

    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setTitle(I)V

    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/coremobility/app/customui/b;->a()V

    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->a(Ljava/lang/String;)V

    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->b(Ljava/lang/String;)V

    const/4 v1, -0x1

    const v2, 0x7f0c0052

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/ep;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ep;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/fa;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fa;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/coremobility/app/vnotes/fl;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fl;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_18

    :pswitch_b4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0240

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_d5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0069

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_f6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c003f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0247

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/fq;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fq;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/fr;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fr;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00ee

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/fs;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fs;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_18f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00ec

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/ft;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ft;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_1b8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00ea

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/fu;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fu;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_1e5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0013

    invoke-static {p0, v2, v4}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/ef;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ef;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x7f0d

    invoke-static {p0, v2, v4}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0049

    new-instance v3, Lcom/coremobility/app/vnotes/eg;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/eg;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00c7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00c8

    new-instance v3, Lcom/coremobility/app/vnotes/eh;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/eh;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_273
    iput-boolean v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h:Z

    invoke-static {}, Lcom/coremobility/integration/i/f;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_282

    const v0, 0x7f0c0270

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_282
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0173

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c017b

    new-instance v3, Lcom/coremobility/app/vnotes/ej;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ej;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/ei;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ei;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_2b9
    iput-boolean v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h:Z

    invoke-static {}, Lcom/coremobility/integration/i/f;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c8

    const v0, 0x7f0c0270

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2c8
    new-instance v1, Lcom/coremobility/app/customui/b;

    invoke-direct {v1, p0}, Lcom/coremobility/app/customui/b;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0173

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/b;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/b;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/coremobility/app/customui/b;->a()V

    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/b;->a(Ljava/lang/String;)V

    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/b;->b(Ljava/lang/String;)V

    const/4 v0, -0x1

    const v2, 0x7f0c017b

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/ek;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ek;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v7}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/el;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/el;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/coremobility/app/vnotes/em;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/em;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v0, v1

    goto/16 :goto_18

    :pswitch_31d
    iput-boolean v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h:Z

    invoke-static {}, Lcom/coremobility/integration/i/f;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32c

    const v0, 0x7f0c026f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_32c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0173

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c017b

    new-instance v2, Lcom/coremobility/app/vnotes/eo;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/eo;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/en;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/en;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_35f
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0173

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v1, Lcom/coremobility/app/vnotes/eq;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/eq;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const v1, 0x7f0c0176

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/er;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/er;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_18

    :pswitch_391
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x7f0c0177

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/coremobility/app/vnotes/es;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/es;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_18

    :pswitch_3ad
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003c

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0179

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_3d2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003c

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0178

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_3f7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003c

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c017a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_41c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0073

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0060

    new-instance v3, Lcom/coremobility/app/vnotes/et;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/et;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_44d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/ew;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ew;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00df

    new-instance v2, Lcom/coremobility/app/vnotes/ev;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ev;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0061

    new-instance v2, Lcom/coremobility/app/vnotes/eu;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/eu;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_48f
    new-instance v0, Lcom/coremobility/app/customui/b;

    invoke-direct {v0, p0}, Lcom/coremobility/app/customui/b;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setIcon(I)V

    const v1, 0x7f0c009d

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c02ba

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x7f0c00aa

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/ex;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ex;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/app/customui/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    const/4 v1, -0x3

    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/ey;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ey;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/coremobility/app/vnotes/ez;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ez;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_18

    :pswitch_4d8
    new-instance v0, Lcom/coremobility/app/customui/b;

    invoke-direct {v0, p0}, Lcom/coremobility/app/customui/b;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setIcon(I)V

    const v1, 0x7f0c0093

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c02bb

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x7f0c00aa

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/fb;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fb;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/app/customui/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    const/4 v1, -0x3

    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/fc;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fc;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/coremobility/app/vnotes/fd;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fd;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_18

    :pswitch_521
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/customui/b;

    invoke-direct {v1, p0}, Lcom/coremobility/app/customui/b;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/b;->setIcon(I)V

    const v2, 0x7f0c0094

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/b;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_547

    const v0, 0x7f0c02bc

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_547
    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/b;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    const v2, 0x7f0c00ac

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/fe;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fe;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/coremobility/app/customui/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    const/4 v0, -0x2

    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/app/vnotes/ff;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ff;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/coremobility/app/customui/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, v1

    goto/16 :goto_18

    :pswitch_56d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->d()[Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->d(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/fg;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/fg;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v7}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/fh;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/fh;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/coremobility/app/vnotes/fi;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fi;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_5ab
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    const v1, 0x7f0c00b7

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    const v1, 0x7f0c00b8

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/fj;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fj;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    goto/16 :goto_18

    :pswitch_5dd
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c024f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0250

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_5fa
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Y:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_602

    move-object v0, v1

    goto/16 :goto_18

    :cond_602
    const v0, 0x7f0c0251

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c024f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_632
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_vtt_sub_response_code"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preference_vtt_sub_psi_error_code"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64f

    move-object v0, v1

    goto/16 :goto_18

    :cond_64f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_684

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_659
    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/coremobility/app/vnotes/fk;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/fk;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/coremobility/app/vnotes/fm;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/fm;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :cond_684
    const/4 v0, -0x1

    goto :goto_659

    :pswitch_686
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c002e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07000e

    new-instance v3, Lcom/coremobility/app/vnotes/fn;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/fn;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :pswitch_6a5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c021a

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v1, Lcom/coremobility/app/vnotes/fo;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fo;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const v1, 0x7f0c021c

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/coremobility/app/vnotes/fp;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/fp;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_18

    nop

    :pswitch_data_6d4
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_e
        :pswitch_d5
        :pswitch_b4
        :pswitch_38
        :pswitch_166
        :pswitch_58
        :pswitch_1b8
        :pswitch_1e5
        :pswitch_113
        :pswitch_18f
        :pswitch_139
        :pswitch_31d
        :pswitch_273
        :pswitch_35f
        :pswitch_391
        :pswitch_3ad
        :pswitch_3d2
        :pswitch_3f7
        :pswitch_41c
        :pswitch_e
        :pswitch_44d
        :pswitch_56d
        :pswitch_4d8
        :pswitch_521
        :pswitch_48f
        :pswitch_5ab
        :pswitch_632
        :pswitch_5fa
        :pswitch_5dd
        :pswitch_2b9
        :pswitch_686
        :pswitch_6a5
        :pswitch_216
        :pswitch_246
        :pswitch_19
    .end packed-switch
.end method

.method protected final onDestroy()V
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    if-eqz v0, :cond_58

    invoke-direct {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->k()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_inbox_exit_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->E()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_56
    sput-object v6, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->H:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    :cond_58
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/fx;

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_31
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    return-void

    :cond_34
    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_31
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    :cond_11
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_ListForm;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCount()I

    move-result v0

    if-ltz p3, :cond_e

    if-ge p3, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(IZ)V

    :cond_e
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i:Lcom/coremobility/app/vnotes/fx;

    :cond_10
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_f2

    :cond_c
    :goto_c
    :pswitch_c
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_11
    const/16 v0, 0x64

    invoke-static {p0, v0, v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;II)V

    goto :goto_c

    :pswitch_17
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto :goto_c

    :cond_29
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_35

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto :goto_c

    :cond_35
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/app/Activity;)V

    goto :goto_c

    :cond_39
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto :goto_c

    :pswitch_3f
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    invoke-static {}, Lcom/coremobility/integration/app/j;->c()V

    const v0, 0x7f0c006c

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->i(Landroid/content/Context;I)V

    goto :goto_c

    :pswitch_4c
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(ZLandroid/app/Activity;)V

    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->overridePendingTransition(II)V

    goto :goto_c

    :pswitch_5a
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->j(Landroid/app/Activity;)V

    goto :goto_c

    :pswitch_5e
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->k(Landroid/app/Activity;)V

    goto :goto_c

    :pswitch_62
    sget-boolean v1, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v1, :cond_91

    invoke-static {v3, v5, p0}, Lcom/coremobility/app/vnotes/cq;->b(IILandroid/app/Activity;)I

    move-result v0

    :goto_6a
    if-eq v0, v7, :cond_96

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "autoplay"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "play_all_new"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "vnoteid"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "vnotedir"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "use_filter"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    :cond_91
    invoke-static {v3, v5, p0}, Lcom/coremobility/app/vnotes/cq;->a(IILandroid/app/Activity;)I

    move-result v0

    goto :goto_6a

    :cond_96
    const-string v0, "goToNextUnheardMsg - No unheard messages left"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_9f
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto/16 :goto_c

    :pswitch_a8
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->onSearchRequested()Z

    goto/16 :goto_c

    :pswitch_ad
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.CORESMC_REFRESH_ACTION"

    invoke-static {v0, v3, v3}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto/16 :goto_c

    :pswitch_b7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto/16 :goto_c

    :pswitch_c0
    const-string v0, "playback menu subscribe"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "subscribe to MRC"

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ab()I

    move-result v0

    if-eq v0, v7, :cond_c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto/16 :goto_c

    :pswitch_d6
    const-string v0, "playback menu subscribe"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "subscribe to free trial"

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->showDialog(I)V

    goto/16 :goto_c

    :pswitch_e8
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/content/Context;)V

    goto/16 :goto_c

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_c
        :pswitch_4c
        :pswitch_5a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_62
        :pswitch_c
        :pswitch_3f
        :pswitch_c
        :pswitch_9f
        :pswitch_a8
        :pswitch_ad
        :pswitch_b7
        :pswitch_c
        :pswitch_c0
        :pswitch_d6
        :pswitch_c
        :pswitch_17
        :pswitch_e8
    .end packed-switch
.end method

.method protected final onPause()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->h:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->k()V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->G:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->Z:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :cond_26
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->V:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/app/vnotes/be;->a(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_26

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    :goto_e
    return-void

    :pswitch_f
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d000f

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e

    nop

    :pswitch_data_26
    .packed-switch 0x24
        :pswitch_f
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f:Z

    if-eqz v0, :cond_18

    const/16 v0, 0xe

    const v3, 0x7f0c0034

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020064

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_18
    const v0, 0x7f0c002e

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f02006f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->m()I

    move-result v0

    const v3, 0x7f0c00e0

    if-ne v0, v3, :cond_10f

    const/16 v3, 0x15

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020068

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCount()I

    move-result v0

    if-lez v0, :cond_55

    const/16 v0, 0x18

    const v3, 0x7f0c0051

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020060

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_55
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_12f

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12f

    :cond_63
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_129

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_122

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v0

    aget v0, v0, v2

    :goto_8c
    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v0

    if-eqz v0, :cond_129

    move v0, v1

    :goto_94
    if-eqz v0, :cond_a5

    const/16 v0, 0xc

    const v3, 0x7f0c0033

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020074

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_a5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCount()I

    move-result v0

    if-lez v0, :cond_ca

    const/4 v0, 0x3

    const v3, 0x7f0c0028

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020070

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x11

    const v3, 0x7f0c0035

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x108004f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_ca
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_e3

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v0

    if-lez v0, :cond_e3

    const/16 v0, 0x13

    const v3, 0x7f0c007a

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020071

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_e3
    const/16 v0, 0x8

    const v3, 0x7f0c002f

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080049

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->C()Z

    move-result v0

    if-eqz v0, :cond_107

    const/16 v0, 0x12

    const v3, 0x7f0c0044

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020062

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_107
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->c:Z

    if-nez v0, :cond_10e

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_10e
    return v1

    :cond_10f
    const v3, 0x7f0c00e1

    if-ne v0, v3, :cond_3a

    const/16 v3, 0x16

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f02005e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3a

    :cond_122
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_8c

    :cond_129
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_63

    :cond_12f
    move v0, v2

    goto/16 :goto_94
.end method

.method protected final onRestart()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onRestart()V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ab:Landroid/os/Parcelable;

    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->ac:Z

    const-string v0, "inbox_full"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    const-string v0, "mwi_on"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f:Z

    const-string v0, "did_upgrade"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    const-string v0, "pending_f_upgrade"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    const-string v0, "sel_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    const-string v0, "line_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    return-void
.end method

.method protected final onResume()V
    .registers 4

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_vnotes_mwi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->notifyDataSetChanged()V

    :cond_21
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->i()V

    :cond_30
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_1d

    const-string v0, "liststate"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "focused"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1d
    const-string v0, "inbox_full"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mwi_on"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "did_upgrade"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pending_f_upgrade"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->S:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sel_key"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "line_type"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onSearchRequested()Z
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCount()I

    move-result v0

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onSearchRequested()Z

    move-result v0

    goto :goto_d
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6

    const-string v0, "preference_inbox_filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_inbox_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    if-eq v1, v0, :cond_22

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->T:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d(I)V

    :cond_22
    return-void
.end method

.method protected final onStart()V
    .registers 2

    const/16 v0, 0x69

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/e;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/h;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/g;)V

    return-void
.end method

.method protected final onStop()V
    .registers 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/e;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/h;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/g;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->W:Lcom/coremobility/app/vnotes/fy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/fy;->a(Z)V

    return-void
.end method
