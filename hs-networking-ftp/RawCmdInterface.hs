
{-# LANGUAGE TypeFamilies
           , KindSignatures
           , MultiParamTypeClasses
           #-}

module Network.Ftp.RawCmdInterface where

class (Monad m) => FtpRawCmdInterface (m :: * -> *) string number printable where
    type FtpResult m
    userName            :: string -> m (FtpResult m)
    password            :: string -> m (FtpResult m)
    account             :: string -> m (FtpResult m)
    changeWorkingDir    :: string -> m (FtpResult m)
    changeToParentDir   :: m (FtpResult m)
    structureMount      :: string -> m (FtpResult m)
    quit                :: m (FtpResult m)
    reinitialize        :: m (FtpResult m)
    dataPort            :: HostPort number -> m (FtpResult m)
    passive             :: m (FtpResult m)
    representationType  :: TypeCode number -> m (FtpResult m)
    fileStructure       :: StructureCode -> m (FtpResult m)
    transferMode        :: ModeCode -> m (FtpResult m)
    retrieve            :: string -> m (FtpResult m)
    store               :: string -> m (FtpResult m)
    storeUniqe          :: m (FtpResult m)
    append              :: string -> m (FtpResult m)
    allocate            :: [number] -> m (FtpResult m)
    restart             :: printable -> m (FtpResult m)
    renameFrom          :: string -> m (FtpResult m)
    renameTo            :: string -> m (FtpResult m)
    abort               :: m (FtpResult m)
    delete              :: string -> m (FtpResult m)
    removeDir           :: string -> m (FtpResult m)
    makeDir             :: string -> m (FtpResult m)
    printWorkingDir     :: m (FtpResult m)
    list                :: [string] -> m (FtpResult m)
    nameList            :: [string] -> m (FtpResult m)
    siteParameters      :: string -> m (FtpResult m)
    system              :: m (FtpResult m)
    status              :: [string] -> m (FtpResult m)
    help                :: string -> m (FtpResult m)
    noop                :: m (FtpResult m)

data HostPort number
  = HostPort { hostNumber :: (number, number, number, number)
             , portNumber :: (number, number)
             }
  deriving (Eq, Ord, Show)

data TypeCode number
  = ASCII FormCode
  | EBCDIC FormCode
  | Image
  | LocalByteSize number
  deriving (Eq, Ord, Show)

data FormCode = NonPrint | TelnetFormat | CarriageControl
  deriving (Eq, Ord, Show)

data StructureCode = File | Record | Page
  deriving (Eq, Ord, Show)

data ModeCode = Stream | Block | Compressed
  deriving (Eq, Ord, Show)



