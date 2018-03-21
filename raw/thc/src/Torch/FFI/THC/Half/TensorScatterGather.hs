{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Half.TensorScatterGather where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH
import Torch.Types.THC

-- | c_gather :  state tensor src dim index -> void
foreign import ccall "THCTensorScatterGather.h THCudaHalfTensor_gather"
  c_gather :: Ptr C'THCState -> Ptr C'THCudaHalfTensor -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> IO ()

-- | c_scatter :  state tensor dim index src -> void
foreign import ccall "THCTensorScatterGather.h THCudaHalfTensor_scatter"
  c_scatter :: Ptr C'THCState -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> Ptr C'THCudaHalfTensor -> IO ()

-- | c_scatterAdd :  state tensor dim index src -> void
foreign import ccall "THCTensorScatterGather.h THCudaHalfTensor_scatterAdd"
  c_scatterAdd :: Ptr C'THCState -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> Ptr C'THCudaHalfTensor -> IO ()

-- | c_scatterFill :  state tensor dim index value -> void
foreign import ccall "THCTensorScatterGather.h THCudaHalfTensor_scatterFill"
  c_scatterFill :: Ptr C'THCState -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> CTHHalf -> IO ()

-- | p_gather : Pointer to function : state tensor src dim index -> void
foreign import ccall "THCTensorScatterGather.h &THCudaHalfTensor_gather"
  p_gather :: FunPtr (Ptr C'THCState -> Ptr C'THCudaHalfTensor -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> IO ())

-- | p_scatter : Pointer to function : state tensor dim index src -> void
foreign import ccall "THCTensorScatterGather.h &THCudaHalfTensor_scatter"
  p_scatter :: FunPtr (Ptr C'THCState -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> Ptr C'THCudaHalfTensor -> IO ())

-- | p_scatterAdd : Pointer to function : state tensor dim index src -> void
foreign import ccall "THCTensorScatterGather.h &THCudaHalfTensor_scatterAdd"
  p_scatterAdd :: FunPtr (Ptr C'THCState -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> Ptr C'THCudaHalfTensor -> IO ())

-- | p_scatterFill : Pointer to function : state tensor dim index value -> void
foreign import ccall "THCTensorScatterGather.h &THCudaHalfTensor_scatterFill"
  p_scatterFill :: FunPtr (Ptr C'THCState -> Ptr C'THCudaHalfTensor -> CInt -> Ptr C'THCudaLongTensor -> CTHHalf -> IO ())