.. -*- mode: rst -*-

Granger Processing Stream
=======================================================

This ensemble of Matlab programs provides an interactive framework for the processing of MEG/EEG data. It uses `Freesurfer <http://surfer.nmr.mgh.harvard.edu/>`_ and `MNE <http://martinos.org/mne>`_. Make sure you have both packages installed and properly instantiated before running GPS: Analysis.

For the purposes of this quick guide, I based it mostly off of `mne-python's git page <https://github.com/mne-tools/mne-python>`_

Get the latest code
^^^^^^^^^^^^^^^^^^^

To get the latest code using git, simply type::

    git clone git@github.com:conradarcturus/GPS.git

Initializing GPS
^^^^^^^^^^^^^^^^^^

Run the gps_init.m script in the main folder

Dependencies
^^^^^^^^^^^^

* Matlab
* Probably a toolbox or two from Matlab

* MNE
* Freesurfer

Contact
^^^^^^^^^^^^

Alexander Conrad Nied (Lead Developer)
    anied@cs.washington.edu

David Gow (Project Manager)
    gow@helix.mgh.harvard.edu

Testing Data
^^^^^^^^^^^^^^^^^^^^^^

The test data set to try out the program is not ready yet, but it will be called WPM (Word Picture Matching)

Licensing
^^^^^^^^^

GPS is a GUI-based program written by A. Conrad Nied based on analyses designed by David Gow and members of his lab
at the Massachusetts General Hospital to automate MNE and FSL analyses of MR-constrained MEG/EEG data and to perform 
Kalman filter based Granger analyses of those data.

    Copyright (C) 2014  A. Conrad Nied and David Gow

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
